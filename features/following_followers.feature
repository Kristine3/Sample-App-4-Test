Feature: Users should be able to see the number of their followers and following
  As I user
  I want to see how many people I'm following and how many are following me
  So that I can keep track of my social activity

  Scenario: User checks number of following and followers
    Given that I am at my home page
    Then I should see 2 following and 1 follower