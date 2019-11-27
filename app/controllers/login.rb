require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'selenium-webdriver'
require 'chromedriver-helper'

users = ["#football"]

# Open Browser, Navigate to Login page
browser = Watir::Browser.new :chrome, switches: ['--incognito']
sleep(3)
browser.goto "instagram.com/accounts/login/"
sleep(3.03)
puts "Logging in..."
browser.text_field(:name => "username").set ""
browser.text_field(:name => "password").set ""
sleep(3.09)
browser.button(:class => ['sqdOP', 'L3NKy', 'y3zKF']).click
sleep(3.12)
if browser.button(:class => ['aOOlW', 'HoLwm']).exists?
  browser.button(:class => ['aOOlW', 'HoLwm']).click
  sleep(3)
end

90.times do
  users.each { |user|
    puts "--------- #{Time.now} Starting loop----------"
    # goes on the hashtag
  browser.goto "https://www.instagram.com/explore/tags/#{user}"
  sleep(3.03)
  # goes on the picture
  photo_target  = browser.div(:class => ['_9AhH0']).click
  sleep(3.09)
  # checked if liked
  if browser.span(:class => ['glyphsSpriteHeart__outline__24__grey_9', 'u-__7']).exists?
    # likes
    like = browser.span(:class => ['fr66n']).click
    sleep(3.12)
    # close the page
    browser.button(:class => ['ckWGn']).click
  else
    # close the page
    browser.button(:class => ['ckWGn']).click
  end
  sleep(5)
  }
  puts "--------- #{Time.now} Closing loop----------"
  sleep(20)
end

