Feature: Access footer links
  As a user
  I want to click the footer links
  So I can get extra information about the site

  Scenario: Click the Contact link
    Given that I am on my user home page
    When I click the Contact link
    Then I should navigate to the Contact page