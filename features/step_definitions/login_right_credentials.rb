require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^I am on the sign\-in page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"
end

When(/^I provide the right credentials$/) do
    @browser.text_field(:name => 'session[email]').set 'email@email.com'
    @browser.text_field(:name => 'session[password]').set 'password'
end

And(/^click "([^"]*)"$/) do |arg|
  l = @browser.input(:type, "submit")
  l.exists?
  l.click
end

Then(/^I should see the text 'Name'$/) do
  assert( @browser.text.include? 'Name' )
  assert( @browser.text.include? 'following' )
  assert( @browser.text.include? 'followers' )
  @browser.close
end