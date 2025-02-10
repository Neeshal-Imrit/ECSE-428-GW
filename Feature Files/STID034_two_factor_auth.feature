Feature: Log In Using Two-Factor Authentication in Kanban Project Coordination System

  As a user
  I want to log in using two-factor authentication
  So that I can enhance the security of my account

  Scenario: User successfully logs in with two-factor authentication
    Given the user is registered for two-factor authentication
    And the user navigates to the login page
    When the user enters their username and password
    And the user enters the verification code sent to their phone
    Then the system should grant access to the user

  Scenario: User fails to log in due to incorrect verification code
    Given the user is registered for two-factor authentication
    And the user navigates to the login page
    When the user enters their username and password
    And the user enters an incorrect verification code
    Then the system should display an error message "Invalid verification code"
    And the user should not be granted access
