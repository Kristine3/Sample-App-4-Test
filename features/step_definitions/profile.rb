require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the Account button and select the Profile option$/) do
  n = @browser.link(:text => "Account")
  n.click

  o = @browser.link(:text => "Profile")
  o.click
end


Then(/^my user profile should be displayed$/) do
  assert( @browser.text.include? 'Name' )
  assert( @browser.text.include? 'following' )
  assert( @browser.text.include? 'followers' )
  assert( @browser.text.include? 'Microposts (7)' )
end