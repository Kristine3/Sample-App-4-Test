Feature: User should be able to delete his microposts
  As a user
  I want to delete my micropost
  So that I can clear microposts from my homepage

  Scenario: Delete a micropost
    Given that I am on the page with my microposts
    And I have posted a new Micropost to be deleted
    When I click the "delete" link under my micropost
    And I click "OK" to delete
    Then the micropost should be cleared from the page
