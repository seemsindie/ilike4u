(async () => {
  const puppeteer = require("puppeteer");
  const axios = require("axios");
  const https = require("https");
  const fs = require("fs");
  const path = require("path");
  const fetch = require("node-fetch");
  const FormData = require("form-data");

  let likedPosts = [];
  let likeIndexColumn = 1;
  let likeIndexRow = 1;

  // let args = process.argv.slice(2);

  // let username = process.argv[0]);
  // let username = process.argv[1]);
  let username = process.argv[2];
  let password = process.argv[3];
  let hashtag = process.argv[4];
  let user_id = process.argv[5];
  let job_id = process.argv[6];

  const browser = await puppeteer.launch({ headless: true, args: ['--no-sandbox', '--disable-setuid-sandbox'] });
  const page = await browser.newPage();

  const afterLikeTimeout = 45000;

  // Stop the bot after 45 minutes, 45 * 60 * 1000 = 2700000
  setTimeout(async function () {
    await browser.close();
  }, 2700000);

  await page.setViewport({ width: 1366, height: 768 });

  await loginToInstagram(page);

  // fetch user image and latest post
  console.log("getting user images");
  await getUserLatestPostImage(page);
  console.log("finished getting user images");

  // start liking
  await goToHashtag(page, hashtag);

  async function likeAndClose(page) {
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector("aria/Like");
      await element.click();
      console.log("post liked");
      likedPosts.push(page.url());

      await getImage(page);
    }

    await page.waitForTimeout(2000);
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const promise = targetPage.waitForNavigation();
      const element = await frame.waitForSelector("aria/Close");
      await element.click();
      await promise;
    }

    console.log(likedPosts);
    likeIndexColumn = 1;
  }

  async function loginToInstagram(page) {
    // Login to instagram
    await page.setUserAgent(
      "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"
    );

    await page.goto("https://www.instagram.com/");
    await page.waitForTimeout(2000);
    // await page.screenshot({path: 'login.png'})
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector(
        "aria/Phone number, username, or email"
      );
      await element.click();
    }

    await page.waitForTimeout(1000);

    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector(
        "aria/Phone number, username, or email"
      );
      await element.type(username, { delay: 50 });
    }

    await page.waitForTimeout(1000);

    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector("aria/Password");
      await element.type(password, { delay: 100 });
    }

    await page.waitForTimeout(1000);

    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const promise = targetPage.waitForNavigation();
      const element = await frame.waitForSelector("aria/Log In");
      await element.click();
      await promise;
    }
  }

  async function goToHashtag(page, hash) {
    console.log("going to ", hash);

    // Go to hashtag
    await page.goto(`https://www.instagram.com/explore/tags/${hash}/`);
    await page.waitForTimeout(2000);

    likeIndexRow = 1;

    await likeNext(page, likeIndexColumn);

    await page.waitForTimeout(afterLikeTimeout);

    await goToHashtag(page, hash);
  }

  async function likeNext(page) {
    console.log("go to post ", likeIndexRow, likeIndexColumn);

    // Go to post
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const promise = targetPage.waitForNavigation();
      const element = await frame.waitForXPath(
        `//*[@id="react-root"]/section/main/article/div[1]/div/div/div[${likeIndexRow}]/div[${likeIndexColumn}]/a`
      );
      await element.click();
      await promise;
    }

    await page.waitForTimeout(2000);

    if (likedPosts.includes(page.url())) {
      console.log("post already liked");

      {
        const targetPage = page;
        const frame = targetPage.mainFrame();
        const promise = targetPage.waitForNavigation();
        const element = await frame.waitForSelector("aria/Close");
        await element.click();
        await promise;
      }

      if (likeIndexColumn == 3) {
        likeIndexRow = likeIndexRow + 1;
        likeIndexColumn = 1;
      } else {
        likeIndexColumn = likeIndexColumn + 1;
      }

      if (likeIndexRow == 3) {
        likeIndexRow = 1;
      }

      await page.waitForTimeout(2000);

      await likeNext(page);
    } else {
      await page.waitForTimeout(2000);
      await likeAndClose(page);
    }
  }

  async function getImage(page) {
    let elHandle = await page.$x(
      `//*[@id="react-root"]/section/main/article/div[1]/div/div/div[${likeIndexRow}]/div[${likeIndexColumn}]/a/div/div[1]/img`
    );

    // prepare to get the textContent of the selector above (use page.evaluate)
    let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

    console.log("post image, imageSrc", imageSrc);

    const filename = `${username}_liked_${Date.now()}.jpg`;
    const filenamePath = path.resolve(filename);

    // download user latest image and upload to server
    await download(imageSrc, filename);
    await addLike(page, filenamePath, filename);

    // delete the image
    await fs.unlinkSync(filenamePath);

    // }
  }

  async function getUserLatestPostImage(page) {
    await page.goto(`https://www.instagram.com/${username}/`);

    // get avatar image
    {
      const frame = page.mainFrame();
      // const promise = page.waitForNavigation();
      const element = await frame.waitForXPath(
        '//*[@id="react-root"]/section/main/div/header/div/div/div/button/img'
      );
      let elHandle = await page.$x(
        '//*[@id="react-root"]/section/main/div/header/div/div/div/button/img'
      );
      // await promise;

      // prepare to get the textContent of the selector above (use page.evaluate)
      let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

      const filename = `${username}_avatar.jpg`;
      const filenamePath = path.resolve(filename);

      // download user latest image and upload to server
      await download(imageSrc, filename);
      await updateJobAvatar(filenamePath, filename);

      // delete the image
      await fs.unlinkSync(filenamePath);
    }

    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      // const promise = targetPage.waitForNavigation();
      const element = await frame.waitForXPath(
        '//*[@id="react-root"]/section/main/div/div[3]/article/div[1]/div/div[1]/div[1]'
      );
      await element.click();
      // await promise;
    }

    // get latest image
    {
      const frame = page.mainFrame();
      // const promise = page.waitForNavigation();
      const element = await frame.waitForXPath(
        "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
      );
      let elHandle = await page.$x(
        "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
      );
      // await promise;

      // prepare to get the textContent of the selector above (use page.evaluate)
      let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

      const filename = `${username}_latest.jpg`;
      const filenamePath = path.resolve(filename);

      // download user latest image and upload to server
      await download(imageSrc, filename);

      console.log(filenamePath, filename);
      await updateJobImage(filenamePath, filename);
      console.log("updated job with images");

      // delete the image
      await fs.unlinkSync(filenamePath);
    }
  }

  async function updateJobImage(imageFilePath, filename) {
    const file = await fs.readFileSync(imageFilePath);
    const form = new FormData();

    form.append("image", file, filename);

    console.log("before axios post to update latest image");
    await axios.post(
      `http://localhost:3000/users/${user_id}/jobs/${job_id}/update_latest_image`,
      form,
      {
        headers: {
          ...form.getHeaders(),
        },
      }
    );
    console.log("after axios post to update latest image");
  }

  async function updateJobAvatar(imageFilePath, filename) {
    const file = await fs.readFileSync(imageFilePath);
    const form = new FormData();

    form.append("image", file, filename);

    await axios.post(
      `http://localhost:3000/users/${user_id}/jobs/${job_id}/update_avatar`,
      form,
      {
        headers: {
          ...form.getHeaders(),
        },
      }
    );
  }

  async function addLike(page, imageFilePath, filename) {
    const file = await fs.readFileSync(imageFilePath);
    const form = new FormData();

    form.append("image", file, filename);
    form.append("ig_media_id", page.url());
    form.append("ig_user_id", "seemsindie");

    await axios.post(
      `http://localhost:3000/users/${user_id}/jobs/${job_id}/add_like`,
      form,
      {
        headers: {
          ...form.getHeaders(),
        },
      }
    );
  }

  async function download(url, filename) {
    const res = await fetch(url);

    await new Promise((resolve, reject) => {
      const fileStream = fs.createWriteStream(filename);
      res.body.pipe(fileStream);
      res.body.on("error", (err) => {
        reject(err);
      });
      fileStream.on("finish", function () {
        resolve();
      });
    });
  }
})();
