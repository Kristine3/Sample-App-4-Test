require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the Account button and select the Settings option$/) do
  n = @browser.link(:text => "Account")
  n.click

  o = @browser.link(:text => "Settings")
  o.click
end


Then(/^I chould access the "([^"]*)" page$/) do |arg|
  assert( @browser.text.include? 'Update your profile' )
  @browser.close
end