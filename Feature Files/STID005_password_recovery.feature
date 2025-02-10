Feature: Password Recovery for Kanban Project Coordination System

  As a user
  I want to recover my password
  So that I can regain access to my account if I forget it

  NFR5: The system shall encrypt any sensitive data such as passwords and credit card information.

  Scenario: User successfully recovers their password
    Given the user is on the login page
    When the user clicks on the "Forgot Password" link
    And the user enters their email address
    And the user clicks the "Submit" button
    Then the system should send a password recovery email to the user
    And the email should contain a link to reset the password
    When the user clicks the password reset link
    And the user enters a new password
    And the user confirms the new password
    Then the system should update the user's password
    And the user should see a confirmation message "Password updated successfully"
    And the user should be redirected to the login page

  # Error flow
  Scenario: User enters an invalid email for password recovery
    Given the user is on the login page
    When the user clicks on the "Forgot Password" link
    And the user enters an invalid email address "invalid-email@example.com"
    And the user clicks the "Submit" button
    Then the system should display an error message "Email address not found"
    And the user should be asked to enter a valid email address

  Scenario: User does not complete the password reset
    Given the user is on the password reset page
    When the user enters a new password
    And the user does not confirm the new password
    Then the system should display an error message "Please confirm your new password"
    And the user should remain on the password reset page
