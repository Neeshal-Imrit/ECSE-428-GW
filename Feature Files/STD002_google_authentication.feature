Feature: Google Authentication for Kanban Project Coordination System

  As a user
  I want to log in using my Google account
  So that I can access the Kanban system without creating a new account

  Scenario: User successfully logs in using Google account
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with Google" button
    And the user is redirected to the Google authentication page
    And the user enters their Google credentials
    And the user grants permission to the Kanban system to access their profile
    Then the user should be redirected back to the Kanban system homepage
    And the user should be logged in with their Google account
    And the user's name and email should be displayed on the dashboard

  Scenario: User cancels Google login process
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with Google" button
    And the user is redirected to the Google authentication page
    And the user cancels the login process
    Then the user should be redirected back to the Kanban system login page
    And the user should remain logged out

  Scenario: User logs out of the Kanban system
    Given the user is logged into the Kanban system using their Google account
    When the user clicks on the "Logout" button
    Then the user should be logged out
    And the user should be redirected to the Kanban system login page

  Scenario: User attempts to log in with an invalid Google account
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with Google" button
    And the user is redirected to the Google authentication page
    And the user enters an invalid Google account credentials
    Then the user should see an error message indicating invalid credentials
    And the user should be given the option to retry or cancel the login

  Scenario: User’s Google account does not have the necessary permissions
    Given the user is on the Kanban project system login page
    When the user clicks on the "Login with Google" button
    And the user is redirected to the Google authentication page
    And the user enters valid Google credentials
    And the user denies the permission to access their profile
    Then the user should see a message informing them that the permission is required
    And the user should be asked to grant the necessary permissions or cancel the login process
