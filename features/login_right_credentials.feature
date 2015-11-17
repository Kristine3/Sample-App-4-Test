Feature: User should be able to login with right credentials
  As a user
  I want to login with the correct credentials
  In order to access my account

  Scenario: Right email and password
    Given I am on the sign-in page
    When I provide the right credentials
    And I click "Sign in"
    Then I should see the text 'Name'

  #assert( @browser.text.include? 'Welcome to the Sample App!' )