require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the About link$/) do
  n = @browser.link(:text => "About")
  n.click
end


Then(/^I should navigate to the About page$/) do
  b = @browser.h1 :text => "About Us"
  assert( b.exists? )
  @browser.close
end