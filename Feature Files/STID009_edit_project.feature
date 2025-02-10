Feature: Edit Project Details in Kanban Project Coordination System

  As an admin
  I want to edit project details (name, description, deadline)
  So that I can keep the project information up to date

  Scenario: Admin successfully edits project details
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Alpha"
    When the admin updates the project name to "Project Alpha V2"
    And the admin updates the project description to "Updated description for Project Alpha"
    And the admin updates the project deadline to "2025-06-15"
    And the admin clicks the "Save Changes" button
    Then the system should save the updated project details
    And the admin should see a confirmation message "Project updated successfully"
    And the project should display the updated name, description, and deadline on the project page

  Scenario: Admin attempts to update project with empty name
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Beta"
    When the admin leaves the project name empty
    And the admin clicks the "Save Changes" button
    Then the system should display an error message "Project name cannot be empty"
    And the project details should remain unchanged

  # Error flow
  Scenario: Admin updates project with an invalid deadline format
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Gamma"
    When the admin updates the project deadline to "invalid-date"
    And the admin clicks the "Save Changes" button
    Then the system should display an error message "Invalid deadline format"
    And the project details should remain unchanged