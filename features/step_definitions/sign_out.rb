require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the 'Sign Out' option$/) do
  n = @browser.link(:text => "Account")
  n.click

  o = @browser.link(:text => "Sign out")
  o.click
end


Then(/^I want to return to the Welcome page$/) do
  b = @browser.h1 :text => 'Welcome to the Sample App'
  assert( b.exists? )
  @browser.close
end