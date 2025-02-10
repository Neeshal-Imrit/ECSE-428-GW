Feature: Restore Deleted Tasks in Kanban Project Coordination System

  As an admin
  I want to restore deleted tasks in projects
  So that I can recover them if they were removed accidentally

  Scenario: Admin successfully restores a deleted task
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Alpha"
    And the admin selects a deleted task "Task 1"
    When the admin clicks on the "Restore Task" button
    Then the system should restore "Task 1"
    And "Task 1" should be visible again in the project

  Scenario: Admin attempts to restore a task that does not exist
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a task "Task 2" that has not been deleted
    When the admin clicks on the "Restore Task" button
    Then the system should display an error message "Task not found"
    And no task should be restored
