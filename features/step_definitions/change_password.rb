require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'

And(/^type in a new password and click "(.*?)"$/) do |arg1|
  @browser.text_field(:name => 'user[password]').set 'new_password'
  @browser.text_field(:name => 'user[password_confirmation]').set 'new_password'
end

Then(/^I should recieve the message "(.*?)"$/) do |arg1|
  assert( @browser.text.include? 'Update your profile' )

  n = @browser.link(:text => "Account")
  n.click
  o = @browser.link(:text => "Settings")
  o.click

  @browser.text_field(:name => 'user[password]').set 'password'
  @browser.text_field(:name => 'user[password_confirmation]').set 'password'

  @browser.close
end