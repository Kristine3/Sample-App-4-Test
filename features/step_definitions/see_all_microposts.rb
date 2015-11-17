require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

Given(/^that I am on my user home page$/) do
  @browser = Watir::Browser.new :ff
  @browser.goto "http://localhost:3000/signin"

  @browser.text_field(:name => 'session[email]').set 'email@email.com'
  @browser.text_field(:name => 'session[password]').set 'password'

  l = @browser.input(:type, "submit")
  l.exists?
  l.click

  @browser.goto "http://localhost:3000"
end

When(/^I type several microposts$/) do
  @browser.textarea(:name => "micropost[content]").set 'Test micropost 1'
  m = @browser.input(:type, "submit")
  m.exists?
  m.click

  @browser.textarea(:name => "micropost[content]").set 'Test micropost 2'
  n = @browser.input(:type, "submit")
  n.exists?
  n.click

  @browser.textarea(:name => "micropost[content]").set 'Test micropost 3'
  o = @browser.input(:type, "submit")
  o.exists?
  o.click
end

Then(/^I should see all those posts under "(.*?)"$/) do |arg1|
  assert( @browser.text.include? 'Test micropost 1' )
  assert( @browser.text.include? 'Test micropost 2' )
  assert( @browser.text.include? 'Test micropost 3' )
  @browser.close
end