(async () => {
  const puppeteer = require("puppeteer");
  const axios = require("axios");
  const https = require('https');
  const fs = require('fs');

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

  const browser = await puppeteer.launch({ headless: true });
  const page = await browser.newPage();

  const afterLikeTimeout = 10000;

  // Stop the bot after 45 minutes, 45 * 60 * 1000 = 2700000
  setTimeout(async function () {
    await browser.close();
  }, 2700000);

  await page.setViewport({ width: 1366, height: 768 });

  await loginToInstagram(page);

  // const image = await getUserLatestPostImage(page);
  // await updateJobImage(image);

  await goToHashtag(page, hashtag);

  async function likeAndClose(page) {
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector("aria/Like");
      await element.click();
      console.log("post liked");
      likedPosts.push(page.url());

      // const imageSrc = await getImage(page);

      // await axios.get(
      //   `http://localhost:3000/users/${user_id}/jobs/${job_id}/add_like`,
      //   {
      //     params: {
      //       ig_media_id: page.url(),
      //       ig_user_id: "seemsindie", // todo: fill in with user info
      //       image_url: imageSrc,
      //     },
      //   }
      // );
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
    await page.goto("https://www.instagram.com/");
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
      await element.type(username, {delay: 50});
    }

    await page.waitForTimeout(1000);

    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const element = await frame.waitForSelector("aria/Password");
      await element.type(password, {delay: 100});
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

    // todo: Change to 45sec
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
    if (likeIndexRow == 1 && likeIndexColumn == 2 && hashtag == "pets") {
      // special case

      // get normal image
      // evaluate XPath expression of the target selector (it return array of ElementHandle)
      let elHandle = await page.$x(
        "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
      );

      // prepare to get the textContent of the selector above (use page.evaluate)
      let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

      console.log("elHandle, imageSrc", elHandle, imageSrc);

      return imageSrc;
    } else {
      // get normal image
      // evaluate XPath expression of the target selector (it return array of ElementHandle)
      let elHandle = await page.$x(
        "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
      );

      // prepare to get the textContent of the selector above (use page.evaluate)
      let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

      console.log("post image, imageSrc", imageSrc);

      return imageSrc;
    }
  }

  

  async function getUserLatestPostImage(page) {

    await page.goto(`https://www.instagram.com/${username}/`);
    {
      const targetPage = page;
      const frame = targetPage.mainFrame();
      const promise = targetPage.waitForNavigation();
      const element = await frame.waitForXPath(
        '//*[@id="react-root"]/section/main/div/div[3]/article/div[1]/div/div[1]/div[1]'
      );
      await element.click();
      await promise;
    }

    const frame = page.mainFrame();
    const promise = page.waitForNavigation();
    const element = await frame.waitForXPath(
      "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
    );
    let elHandle = await page.$x(
      "/html/body/div[5]/div[2]/div/article/div[2]/div/div/div[1]/img"
    );

    // prepare to get the textContent of the selector above (use page.evaluate)
    let imageSrc = await page.evaluate((el) => el.src, elHandle[0]);

    // console.log("profile, imageSrc", imageSrc);

    // await page.goto(imageSrc)

    // result = await download(imageSrc, `imagekjlk.png`);


    return imageSrc;
  }

  async function updateJobImage(image) {
    await axios.get(
      `http://localhost:3000/users/${user_id}/jobs/${job_id}/update_image`,
      {
        params: {
          image_url: image,
        },
      }
    );
  }

  

})();
