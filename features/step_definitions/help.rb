require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^I am on my home page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"

  @browser.text_field(:name => 'session[email]').set 'email@email.com'
  @browser.text_field(:name => 'session[password]').set 'password'

  l = @browser.input(:type, "submit")
  l.exists?
  l.click

  @browser.goto "http://localhost:3000"
end

When(/^I click the Help link$/) do
  n = @browser.link(:text => "Help")
  n.click
end

Then(/^I should access the Help page$/) do
  assert( @browser.text.include? 'Get help on the Ruby on Rails Tutorial at the Rails Tutorial help page.' )
end