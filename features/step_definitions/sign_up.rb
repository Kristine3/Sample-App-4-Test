require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^I am on the home page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/"
end

When(/^I click the "([^"]*)" button$/) do |arg|
  l = @browser.link(:href, "/signup")
  l.exists?
  l.click
end


And(/^I provide my information$/) do
  num1 = 100000 + rand(999999)
  num2 = 100000 + rand(999999)
  randomEmail = num2.to_s + '@email.com'
  num3 = 100000 + rand(999999)

  @browser.text_field(:name => 'user[name]').set num1
  @browser.text_field(:name => 'user[email]').set randomEmail
  @browser.text_field(:name => 'user[password]').set num3
  @browser.text_field(:name => 'user[password_confirmation]').set num3
end

And(/^I click "([^"]*)"$/) do |arg|
  l = @browser.input(:type, "submit")
  l.exists?
  l.click
end

Then(/^I should navigate to my user page$/) do
  assert( @browser.text.include? 'Welcome to the Sample App!' )
  @browser.close
end
