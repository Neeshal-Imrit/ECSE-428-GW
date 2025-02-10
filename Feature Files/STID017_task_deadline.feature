Feature: Set Deadlines for Tasks in Kanban Project Coordination System

  As a user
  I want to set deadlines for tasks
  So that I can track task progress within the project timeline

  Scenario: User successfully sets a task deadline
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    And the user creates a task "Task 1"
    When the user clicks on the "Set Deadline" button
    And the user selects the date "2025-02-20"
    And the user clicks the "Save" button
    Then the system should set the deadline for "Task 1" as "2025-02-20"
    And the task "Task 1" should display the deadline "2025-02-20"

  Scenario: User attempts to set a past deadline for a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    And the user creates a task "Task 2"
    When the user clicks on the "Set Deadline" button
    And the user selects a past date "2024-12-31"
    And the user clicks the "Save" button
    Then the system should display an error message "Cannot set a past deadline"
    And the deadline should not be set

  Scenario: User sets a task deadline with an invalid date
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    And the user creates a task "Task 3"
    When the user clicks on the "Set Deadline" button
    And the user enters an invalid date "Invalid Date"
    And the user clicks the "Save" button
    Then the system should display an error message "Please enter a valid deadline"
    And the task deadline should not be set
