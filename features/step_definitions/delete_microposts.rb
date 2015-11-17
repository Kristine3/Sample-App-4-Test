require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^that I am on the page with my microposts$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"

  @browser.text_field(:name => 'session[email]').set 'email@email.com'
  @browser.text_field(:name => 'session[password]').set 'password'

  l = @browser.input(:type, "submit")
  l.exists?
  l.click

  @browser.goto "http://localhost:3000"
end

And(/^I have posted a new Micropost to be deleted$/) do

  @browser.textarea(:name => "micropost[content]").set 'post to be deleted'
  m = @browser.input(:type, "submit")
  m.click

end

When(/^I click the "([^"]*)" link under my micropost$/) do |arg|
  n = @browser.links(:text => "delete").first
  n.click
end

And(/^I click "([^"]*)" to delete$/) do |arg|
  @browser.alert.exists?
  @browser.alert.ok
end


Then(/^the micropost should be cleared from the page$/) do
  assert(@browser.text.include?('post to be deleted') != true)
  @browser.close
end
