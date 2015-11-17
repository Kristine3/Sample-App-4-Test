require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^that I am at my home page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"

  @browser.text_field(:name => 'session[email]').set 'email@email.com'
  @browser.text_field(:name => 'session[password]').set 'password'

  l = @browser.input(:type, "submit")
  l.exists?
  l.click

  @browser.goto "http://localhost:3000"
end

When(/^I type a new micropost$/) do
  @browser.textarea(:name => "micropost[content]").set 'Here is a test micropost'
end

Then(/^I should see that post on my Micropost Feed$/) do
  assert( @browser.text.include? 'Here is a test micropost' )
  @browser.close
end

