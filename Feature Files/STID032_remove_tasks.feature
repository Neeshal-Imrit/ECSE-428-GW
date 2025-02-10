Feature: Remove Tasks in Projects in Kanban Project Coordination System
  As an admin
  I want to remove tasks in projects
  So that I can clean up tasks that are no longer required

  Scenario: Admin successfully removes a task from a project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Alpha"
    And the admin selects the task "Task 1"
    When the admin clicks on the "Remove Task" button
    And the admin confirms the removal
    Then the system should delete "Task 1" from the project
    And the task should no longer be visible in the project

  Scenario: Admin attempts to remove a task that does not exist
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Beta"
    When the admin selects a task "Task 2" that has already been removed
    And the admin clicks on the "Remove Task" button
    Then the system should display an error message "Task not found"
    And no task should be removed
  #Alternative Flow

  Scenario: Admin cancels task removal
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Gamma"
    And the admin selects the task "Task 3"
    When the admin clicks on the "Remove Task" button
    And the admin cancels the removal
    Then the system should not delete "Task 3"
    And the task should remain visible in the project
