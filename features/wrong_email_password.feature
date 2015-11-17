Feature: Wrong email and password should fail
  As a user
  I want to make sure my account is email and password protected
  In order to keep my account secure

  Scenario: Wrong email and password
    Given that I am on the sign-in page
    When I provide wrong information
    And click "Sign in"
    Then I should recieve the message 'Invalid email/password combination'