require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^that I am on another user's page with (\d+) followers$/) do |arg|
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"

  @browser.text_field(:name => 'session[email]').set 'email@email.com'
  @browser.text_field(:name => 'session[password]').set 'password'

  l = @browser.input(:type, "submit")
  l.exists?
  l.click

  @browser.goto "http://localhost:3000/users/1"
end


When(/^I click the Follow button$/) do
  m = @browser.input(:type, "submit")
  m.exists?
  m.click
end

Then(/^the user should now have (\d+) follower$/) do |arg|
  @browser.goto "http://localhost:3000/users/1/followers"

  n = @browser.link(:text => "Name")
  assert( n.exists? )

  @browser.goto "http://localhost:3000/users/1"
  m = @browser.input(:type, "submit")
  m.exists?
  m.click

end

