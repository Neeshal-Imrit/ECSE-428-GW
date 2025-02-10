Feature: Assign Priority Levels to Tasks in Kanban Project Coordination System

  As a user
  I want to assign priority levels to tasks
  So that I can focus on the most critical tasks

  Scenario: User successfully assigns a priority level to a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Alpha"
    And the user selects the task "Task 1"
    When the user clicks on the "Assign Priority" button
    And the user selects the priority "High"
    And the user clicks the "Save Priority" button
    Then the system should assign "High" priority to "Task 1"
    And the task should be marked with a "High" priority label

  Scenario: User attempts to assign an invalid priority level
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Beta"
    And the user selects the task "Task 2"
    When the user clicks on the "Assign Priority" button
    And the user selects an invalid priority "Urgent"
    And the user clicks the "Save Priority" button
    Then the system should display an error message "Invalid priority level"
    And no priority should be assigned to the task
