require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^that I am on the sign\-in page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"
end

When(/^I provide wrong information$/) do
  @browser.text_field(:name => 'session[email]').set 'wrong@email.com'
  @browser.text_field(:name => 'session[password]').set 'wrongPassword'
end

And(/^click "([^"]*)"$/) do |arg|
  l = @browser.input(:type, "submit")
  l.exists?
  l.click
end

Then(/^I should recieve the message 'Invalid email\/password combination'$/) do
  assert( @browser.text.include? 'Invalid email/password combination' )
  @browser.close
end