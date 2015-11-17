require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the Rails Tutorial link$/) do
  n = @browser.link(:text => "Rails Tutorial")
  n.click
end

Then(/^I should navigate to the Ruby on Rails Tutorial page$/) do
  assert( @browser.text.include? 'Learn Web Development with Rails' )
  @browser.close
end


