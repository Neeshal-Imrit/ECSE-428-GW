Feature: Assign Roles and Permissions to Users in Kanban Project Coordination System

  As an admin
  I want to assign roles and permissions to users
  So that I can control what they can access and perform

  Scenario: Admin successfully assigns a role to a user
    Given the admin is logged into the Kanban system
    And the admin navigates to the "User Management" section
    When the admin selects a user from the list
    And the admin assigns the "Project Manager" role to the user
    Then the user should have "Project Manager" permissions
    And the system should display a confirmation message "Role assigned successfully"

  # Error flow
  Scenario: Admin attempts to assign an invalid role
    Given the admin is logged into the Kanban system
    And the admin navigates to the "User Management" section
    When the admin selects a user from the list
    And the admin attempts to assign an invalid role "SuperUser"
    Then the system should display an error message "Invalid role"
    And the user’s role should remain unchanged

  Scenario: Admin updates a user's permissions
    Given the admin is logged into the Kanban system
    And the admin navigates to the "User Management" section
    When the admin selects a user and updates their permissions
    And the admin clicks "Save"
    Then the system should save the updated permissions
    And the user should have the updated permissions reflected in their account
