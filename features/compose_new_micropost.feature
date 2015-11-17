Feature: Users should be able to compose new micropost
  As a user
  I want to compose a new micropost
  So that I can display it on my page

  Scenario: Compose new micropost
    Given that I am at my home page
    When I type a new micropost
    And I click "Post"
    Then I should see that post on my Micropost Feed
