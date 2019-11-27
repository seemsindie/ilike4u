require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'selenium-webdriver'
require 'chromedriver-helper'

hashtag = "football"

# Open Browser, Navigate to Login page
browser = Watir::Browser.new :chrome, switches: ['--incognito']
sleep(3)
browser.goto "instagram.com/accounts/login/"
sleep(3.03)
puts "Logging in..."
browser.text_field(name: "username").set "ilike4u326"
browser.text_field(name: "password").set "batch326"
sleep(3.09)
browser.button(class: ['sqdOP', 'L3NKy', 'y3zKF']).click
sleep(3.12)
if browser.button(class: ['aOOlW', 'HoLwm']).exists?
  browser.button(class: ['aOOlW', 'HoLwm']).click
  sleep(3)
end
sleep(3)
10.times do
  puts "--------- #{Time.now} Starting loop----------"
  # goes on the hashtag
  browser.goto "https://www.instagram.com/explore/tags/#{hashtag}"
  sleep(3.03)
  # goes on the picture
  photo_target = browser.divs(class: ['_9AhH0'])[9].click
  sleep(3.09)
  # checked if liked
  if browser.span(class: ['glyphsSpriteHeart__outline__24__grey_9', 'u-__7']).exists?
    # likes
    like = browser.span(class: ['fr66n']).click
    sleep(3.12)
  end
  # close the page
  browser.button(class: ['ckWGn']).click
  sleep(3)
  puts "--------- #{Time.now} Closing loop----------"
  sleep(3)
end
