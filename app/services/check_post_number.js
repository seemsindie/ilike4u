const puppeteer = require("puppeteer");

(async () => {
  const browser = await puppeteer.launch({ headless: true, args: ['--no-sandbox', '--disable-setuid-sandbox'] });
  const page = await browser.newPage();

  await page.setViewport({ width: 1366, height: 768 });
  await page.setUserAgent(
    "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"
  );

  let username = process.argv[2];
  let password = process.argv[3];
  let hashtag = process.argv[4];

  await loginToInstagram(page);


  await page.goto(`https://www.instagram.com/explore/tags/${hashtag}/`);

  await page.waitForXPath('//*[@id="react-root"]/section/main/header/div[2]/div/div[2]/span/span');
  
  let [element] = await page.$x('//*[@id="react-root"]/section/main/header/div[2]/div/div[2]/span/span');
  let text = await page.evaluate((element) => element.textContent, element);

//   const title = await page.$x("//h1");
//   let text = await page.evaluate((h1) => h1.textContent, title[0]);
  console.log(parseInt(text.split(',').join('')));

  await browser.close();

  async function loginToInstagram(page) {
    // Login to instagram
    await page.setUserAgent(
      "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36"
    );

    await page.goto("https://www.instagram.com/");
    await page.waitForTimeout(2000);
    
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
})();
