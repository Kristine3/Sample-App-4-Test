Feature: User should be able to go to his Profile page from Account -> Profile
  As a user
  I want to select Account -> Profile
  So that I can access my profile page

  Scenario: Accessing the profile page
    Given that I am on my user home page
    When I click the Account button and select the Profile option
    Then my user profile should be displayed
