Feature: GitHub Authentication for Kanban Project Coordination System

  As a user
  I want to log in using my GitHub account
  So that I can avoid creating a new password and access my Kanban board quickly

  NFR3: The system shall process and display pages within a maximum of 2.5 seconds on a device with a 3 Mbps upload internet connection.

  Scenario: User successfully logs in using GitHub account
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with GitHub" button
    And the user is redirected to the GitHub authentication page
    And the user enters their GitHub credentials
    And the user grants permission to the Kanban system to access their profile
    Then the user should be redirected back to the Kanban system homepage
    And the user should be logged in with their GitHub account
    And the user's name and email should be displayed on the dashboard
    And the page should load within 2.5 seconds

  Scenario: User cancels GitHub login process
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with GitHub" button
    And the user is redirected to the GitHub authentication page
    And the user cancels the login process
    Then the user should be redirected back to the Kanban system login page
    And the user should remain logged out
    And the page should load within 2.5 seconds

  Scenario: User logs out of the Kanban system
    Given the user is logged into the Kanban system using their GitHub account
    When the user clicks on the "Logout" button
    Then the user should be logged out
    And the user should be redirected to the Kanban system login page
    And the page should load within 2.5 seconds

  Scenario: User attempts to log in with an invalid GitHub account
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with GitHub" button
    And the user is redirected to the GitHub authentication page
    And the user enters invalid GitHub credentials
    Then the user should see an error message indicating invalid credentials
    And the user should be given the option to retry or cancel the login
    And the page should load within 2.5 seconds

  Scenario: User’s GitHub account does not have the necessary permissions
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with GitHub" button
    And the user is redirected to the GitHub authentication page
    And the user enters valid GitHub credentials
    And the user denies the permission to access their profile
    Then the user should see a message informing them that the permission is required
    And the user should be asked to grant the necessary permissions or cancel the login process
    And the page should load within 2.5 seconds
  # Error Flow
  Scenario: Error during GitHub authentication process
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with GitHub" button
    And the user is redirected to the GitHub authentication page
    And an error occurs during the authentication process
    Then the user should see an error message indicating the authentication error
    And the user should be given the option to retry or cancel the login
    And the page should load within 2.5 seconds
