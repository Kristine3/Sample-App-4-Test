Feature: User should be able to see all the microposts from all the users in "Micropost Feed"
  As a user
  I want to see all my posts to be listed under "Micropost Feed"
  So I can evaluate all the microposts I've made

  Scenario: Post several microposts
    Given that I am on my user home page
    When I type several microposts
    Then I should see all those posts under "Micropost Feed"
