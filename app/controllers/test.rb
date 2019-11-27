require 'watir' # Crawler
require 'pry' # Ruby REPL
require 'selenium-webdriver'
require 'chromedriver-helper'

username = "ilike4u326"
password = "batch326"

browser = Watir::Browser.new :chrome, switches: ['--incognito']
sleep(3)
browser.goto  "instagram.com/accounts/login/"
sleep(3.03)
puts "Logging in..."
browser.text_field(name: "username").set "#{username}"
browser.text_field(name: "password").set "#{password}"
sleep(3.09)
browser.button(class: ['sqdOP', 'L3NKy', 'y3zKF']).click
sleep(3.12)
if browser.button(class: ['aOOlW', 'HoLwm']).exists?
  browser.button(class: ['aOOlW', 'HoLwm']).click
  sleep(3)
end
sleep(1)

browser.goto "instagram.com/#{username}"
photo_target = browser.div(class: ['_9AhH0']).click
sleep(8000)
