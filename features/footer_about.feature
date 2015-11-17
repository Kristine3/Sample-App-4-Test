Feature: Access footer links
  As a user
  I want to click the footer links
  So I can get extra information about the site

  Scenario: Click the About link
    Given that I am on my user home page
    When I click the About link
    Then I should navigate to the About page