require "rubygems"
require "rspec"
require "selenium-webdriver"

include RSpec::Matchers


$timeout = 50

$driver_ff = Selenium::WebDriver.for :firefox

#driver_ie = Selenium::WebDriver.for :IE

#driver_ch = Selenium::WebDriver.for :Chrome
