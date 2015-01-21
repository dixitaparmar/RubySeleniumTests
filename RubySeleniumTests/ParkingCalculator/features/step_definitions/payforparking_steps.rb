require "rubygems"
require "rspec"
require "selenium-webdriver"
require "test/unit"


#!/usr/bin/ruby -w

Given(/^I am on "(.*?)" page$/) do |path_to|
  $driver_ff.navigate.to path_to
end

Given(/^I have selected lot "(.*?)"$/) do |lot|
  parking_lot = $driver_ff.find_element(:name, "Lot")
  select = Selenium::WebDriver::Support::Select.new($driver_ff.find_element(:id, "Lot"))
  select.select_by(:text, lot)
end

Given(/^I have entered entry time "(.*?)"$/) do |entry_time|
 inputs = $driver_ff.find_element(:id, "EntryTime")
 inputs.clear()
 testString = String.new(entry_time)
 inputs.send_keys(testString);
end

Given(/^I have selected entry AMPM "(.*?)"$/) do |entry_AMPM|
 print "showing what the value of ampm is " + entry_AMPM
 $driver_ff.find_element(:xpath, "/html/body/form/table/tbody/tr[2]/td[2]/font/input[3]").click
  
end

Given(/^I have entered entry date"(.*?)"$/) do |entry_date| 
  $driver_ff.find_elements(:tag_name, "a")[0].click
  $driver_ff.execute_script("document.getElementById('EntryDate').value='#{entry_date}';;")
  $driver_ff.switch_to.window($driver_ff.window_handles.last)
  $driver_ff.close 
  $driver_ff.switch_to.window($driver_ff.window_handles.first)
end

Given(/^I have entered exit time "(.*?)"$/) do |exit_time|
 inputs = $driver_ff.find_element(:id, "ExitTime")
 inputs.clear()
 testString = String.new(exit_time)
 inputs.send_keys(testString);
end

Given(/^I have selected exit AMPM  "(.*?)"$/) do |exit_AMPM|
 print "showing what the value of ampm is " + exit_AMPM
 $driver_ff.find_element(:xpath, "/html/body/form/table/tbody/tr[3]/td[2]/font/input[3]").click
end

Given(/^I have entered exit date "(.*?)"$/) do |exit_date|
  $driver_ff.find_elements(:tag_name, "a")[1].click
  $driver_ff.execute_script("document.getElementById('ExitDate').value='#{exit_date}';;")
  $driver_ff.switch_to.window($driver_ff.window_handles.last)
  $driver_ff.close 
  $driver_ff.switch_to.window($driver_ff.window_handles.first)
end

When(/^I choose to view the parking cost$/) do
  $driver_ff.find_element(:name, "Submit").click
end

Then(/^I should see cost "(.*?)" in results$/) do |cost|
  
  actual = $driver_ff.find_element(:css, "b").text
  if actual.to_str == "$ 2.00"
    print "Test passed"
  else
    print "Test failed"
  end
  actual = $driver_ff.find_element(:css, "span.BodyCopy > font > b").text
  if actual.to_str == "(0 Days, 1 Hours, 0 Minutes)"
    print "Test passed"
  else
    print "Test failed"
  end
  $driver_ff.quit
end
 