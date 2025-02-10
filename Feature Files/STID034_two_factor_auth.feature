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

  Scenario: User fails to log in due to expired verification code
    Given the user is registered for two-factor authentication
    And the user navigates to the login page
    When the user enters their username and password
    And the user enters an expired verification code
    Then the system should display an error message "Verification code has expired"
    And the user should not be granted access
  #Error Flow

  Scenario: System fails to send verification code due to server error
    Given the user is registered for two-factor authentication
    And the user navigates to the login page
    When the user enters their username and password
    And the system attempts to send the verification code
    And a server error occurs
    Then the system should display an error message "Failed to send verification code due to server error. Please try again later."
    And the user should not be granted access
