require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^I have an open browser$/) do
  @browser = Watir::Browser.new :ff
end

When(/^I navigate to the home page$/) do
  @browser.goto "http://localhost:3000/"
end

Then(/^I should see "([^"]*)"$/) do |arg|
  assert( @browser.text.include? 'Welcome to the Sample App' )
  @browser.close
end


