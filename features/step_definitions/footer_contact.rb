require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the Contact link$/) do
  n = @browser.link(:text => "Contact")
  n.click
end

Then(/^I should navigate to the Contact page$/) do
  assert( @browser.text.include? 'Contact Ruby on Rails Tutorial about the sample app at the contact page.' )
  @browser.close
end