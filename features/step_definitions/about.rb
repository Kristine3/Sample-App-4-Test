require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

When(/^I click the About link on the home page$/) do
  n = @browser.link(:text => "About")
  n.click
end


Then(/^I should navigate to the site's About page$/) do
  assert( @browser.text.include? 'The Ruby on Rails Tutorial is a project to make a book and screencasts to teach web development with Ruby on Rails. ' )
end