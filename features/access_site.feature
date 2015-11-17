Feature: Access website
  As a user
  I want to see the home page of the website
  In order to read the page

  Scenario: View home page
    Given I have an open browser
    When I navigate to the home page
    Then I should see "Welcome to the Sample App"


