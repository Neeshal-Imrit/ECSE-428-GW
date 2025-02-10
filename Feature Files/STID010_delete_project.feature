Feature: Delete Projects in Kanban Project Coordination System

  As an admin
  I want to delete projects
  So that I can remove projects that are no longer needed

  Scenario: Admin successfully deletes a project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Alpha"
    When the admin clicks the "Delete Project" button
    And the admin confirms the deletion
    Then the system should delete the project
    And the project should no longer appear on the project dashboard
    And the admin should see a confirmation message "Project deleted successfully"

  Scenario: Admin attempts to delete a project and cancels
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Beta"
    When the admin clicks the "Delete Project" button
    And the admin cancels the deletion
    Then the project should remain in the system
    And the admin should see a message "Project deletion cancelled"

  Scenario: Admin attempts to delete a project without confirmation
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Gamma"
    When the admin clicks the "Delete Project" button
    Then the system should prompt the admin to confirm the deletion
    And the admin should be asked "Are you sure you want to delete this project?"
    And the project should not be deleted until the admin confirms the deletion

  Scenario: Admin attempts to delete a project that is associated with active tasks
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Delta" that has active tasks
    When the admin clicks the "Delete Project" button
    And the admin confirms the deletion
    Then the system should display a warning message "This project has active tasks. Are you sure you want to delete it?"
    And the admin should have the option to cancel the deletion or proceed
    And the project should only be deleted if the admin confirms the action

     # Error flow
  Scenario: Error during project deletion process
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Epsilon"
    When the admin clicks the "Delete Project" button
    And an error occurs during the deletion process
    Then the system should display an error message indicating the deletion error
    And the project should remain in the system
    And the admin should have the option to retry deleting the project