Feature: Manage User Profile in Kanban Project Coordination System

  As a user
  I want to manage my profile
  So that I can update my personal information like name, email, and password when necessary

  Scenario: User successfully updates their profile information
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user updates their name to "New Name"
    And the user updates their email to "new.email@example.com"
    And the user updates their password
    And the user clicks on the "Save Changes" button
    Then the system should save the updated information
    And the user should see a confirmation message "Profile updated successfully"
    And the user should be redirected to the profile overview page
    And the user's updated name and email should be displayed

  Scenario: User attempts to update their profile with invalid information
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user enters an invalid email address "invalid-email"
    And the user tries to save the changes
    Then the system should display an error message "Please enter a valid email address"
    And the user should not be redirected
    And the user should remain on the profile page with the invalid email field highlighted

  Scenario: User cancels profile update
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user makes changes to their profile (e.g., updates name, email, or password)
    And the user clicks the "Cancel" button
    Then the user should be redirected to the profile overview page
    And the profile changes should not be saved

  Scenario: User changes their password
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user enters a new password "newPassword123"
    And the user confirms the new password
    And the user clicks on the "Save Changes" button
    Then the system should save the updated password
    And the user should see a confirmation message "Password updated successfully"
    And the user should be redirected to the profile overview page

  Scenario: User attempts to update their profile with a password mismatch
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user enters a new password "newPassword123"
    And the user confirms the new password as "newPassword321"
    And the user clicks the "Save Changes" button
    Then the system should display an error message "Passwords do not match"
    And the user should remain on the profile page with the password fields highlighted

  Scenario: User updates their profile without making any changes
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    When the user clicks the "Save Changes" button without modifying any information
    Then the system should display a message "No changes made"
    And the user should remain on the profile page without any updates

  Scenario: User views their profile without making any changes
    Given the user is logged into the Kanban project system
    And the user navigates to the "Profile" section
    Then the user should see their current profile information (name, email, etc.)
    And the user should have the option to update their profile details
