require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the News link$/) do
    n = @browser.link(:text => "News")
    n.click
end

Then(/^I should navigate to the News page$/) do
  b = @browser.h1 :text => 'Ruby on Rails Tutorial News'
  assert( b.exists? )
  @browser.close
end