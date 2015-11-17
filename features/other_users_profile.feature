Feature: User should be able to click and see others user's profile information
  As a user
  I want to click on the Users link
  In order to see other users' profile information

  Scenario: Visit Users page
    Given that I am on my user home page
    When I click the 'Users' link
    Then I should see a list of users

