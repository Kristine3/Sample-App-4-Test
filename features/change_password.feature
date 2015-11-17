Feature: User should be able to change his password in "Update your profile page"
  As a user
  I want to type in a new password
  So I can change the passoword to my account

  Scenario: Update password
    Given that I am at my home page
    When I click the Account button and select the Settings option
    And type in a new password and click "Save changes"
    Then I should recieve the message "Profile updated"