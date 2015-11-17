Feature: Sign up and create account
  As a user
  I want to sign up and create an account
  So I can use the website

  Scenario: Sign up
    Given I am on the home page
    When I click the "Sign Up Now" button
    And I provide my information
    And I click "Create My Account"
    Then I should navigate to my user page