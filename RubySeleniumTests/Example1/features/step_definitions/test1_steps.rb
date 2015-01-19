require "rubygems"
require "rspec"
require "selenium-webdriver"


Given(/^I am on "(.*?)" page$/) do |path_to|
   $driver_ff.navigate.to path_to
   print "test to see if teamcity build kicks off one more change"
end

When(/^I type "(.*?)" in search field$/) do |string_search| 

  element = $driver_ff.find_element :id => "masthead-search-term"
  element.send_keys string_search
  $driver_ff.find_element(:id, "search-btn").click
  
end

Then(/^I should see "(.*?)" in result$/) do |string_expectation| 
  $driver_ff.find_element(:tag_name => "body").text.include?("string_expectation")
end
