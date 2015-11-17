require 'rubygems'
require 'watir-webdriver'
require 'cucumber'
require 'test/unit/assertions'


Then(/^I should see (\d+) following and (\d+) follower$/) do |arg1, arg2|
  assert( @browser.text.include? 'following' )
  assert( @browser.text.include? 'followers' )

  d = @browser.div :class => 'stats'
  assert (d.exists?)
end