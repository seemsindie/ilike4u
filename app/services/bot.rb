require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'selenium-webdriver'
require 'chromedriver-helper'

class Bot
  def self.insta_bot(job)
    like_counter = 0
    photo_liked = []
    user_liked = []
    user_hashtags = []
    # hashtag = "cat"

    # Open Browser, Navigate to Login page
    browser = Watir::Browser.new :chrome, switches: ['--incognito']
    sleep(3)
    browser.goto "instagram.com/accounts/login/"
    sleep(3.03)
    puts "Logging in..."
    browser.text_field(name: "username").set "#{job.instagram_username}"
    browser.text_field(name: "password").set "#{job.instagram_password}"
    sleep(3.09)
    browser.button(class: ['sqdOP', 'L3NKy', 'y3zKF']).click
    sleep(3.12)
    if browser.button(class: ['aOOlW', 'HoLwm']).exists?
      browser.button(class: ['aOOlW', 'HoLwm']).click
      sleep(3)
    end
    sleep(3)
    2.times do
      puts "--------- #{Time.now} Starting loop----------"
      # goes on the hashtag
      browser.goto "https://www.instagram.com/explore/tags/#{job.hashtag}"
      sleep(3.03)
      # goes on the picture
      browser.divs(class: ['_9AhH0'])[9].click
      sleep(1)
      photo_liked << browser.url
      sleep(1)
      user_liked << browser.h2(class: ['_6lAjh']).text
      sleep(3.09)
      user_hashtags << browser.div(class: ['C4VMK']).span.text.match(/#.+/).to_s.split(" ")

      # checked if liked
      if browser.span(class: ['glyphsSpriteHeart__outline__24__grey_9', 'u-__7']).exists?
        # likes
        browser.span(class: ['fr66n']).click
        like_counter += 1
        sleep(3.12)
      end
      # close the page
      browser.button(class: ['ckWGn']).click
      current_like = GivenLike.create!(ig_media_id: "#{photo_liked}", ig_user_id: "#{user_liked}", job: job)
      sleep(3)
      puts "--------- #{Time.now} Closing loop----------"
      sleep(45)
    end
  end
end

