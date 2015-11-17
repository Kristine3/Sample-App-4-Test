Feature: User should be able to follow or unfollow another user
  As I user
  I want to click the follow button
  To follow another user

  Scenario: Follow a user
    Given that I am on another user's page with 0 followers
    When I click the Follow button
    Then the user should now have 1 follower