require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the 'Users' link$/) do
  n = @browser.link(:text => "Users")
  n.click
end

Then(/^I should see a list of users$/) do
  d = @browser.ul :class => 'users'
  assert (d.exists?)
end