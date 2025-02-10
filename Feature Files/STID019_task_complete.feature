Feature: Mark Tasks as Complete in Kanban Project Coordination System

  As a user
  I want to mark tasks as complete
  So that others know the task no longer requires work

  Scenario: User successfully marks a task as complete
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    And the user selects a task "Task 1"
    When the user clicks on the "Mark as Complete" button
    Then the system should mark "Task 1" as complete
    And "Task 1" should be listed under completed tasks

  Scenario: User attempts to mark a task as complete without selecting a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks on the "Mark as Complete" button without selecting a task
    Then the system should display an error message "Please select a task to mark as complete"
    And no task should be marked as complete
