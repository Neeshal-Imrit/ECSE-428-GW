Feature: Assign Tasks to Specific Team Members in Kanban Project Coordination System

  As a user
  I want to assign tasks to specific team members
  So that they can take ownership of tasks

  Scenario: User successfully assigns a task to a team member
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    And the user creates a task "Task 1"
    When the user clicks on the "Assign Task" button
    And the user selects team member "John Doe"
    And the user clicks the "Assign" button
    Then the system should assign "Task 1" to "John Doe"
    And the task "Task 1" should be listed under "John Doe's tasks"

  Scenario: User assigns a task to multiple team members
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    And the user creates a task "Task 2"
    When the user clicks on the "Assign Task" button
    And the user selects team members "John Doe" and "Jane Smith"
    And the user clicks the "Assign" button
    Then the system should assign "Task 2" to both "John Doe" and "Jane Smith"
    And "Task 2" should be listed under both "John Doe's tasks" and "Jane Smith's tasks"

  # Error Flow
  Scenario: User attempts to assign a task without selecting a team member
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    And the user creates a task "Task 3"
    When the user clicks on the "Assign Task" button
    And the user does not select any team member
    And the user clicks the "Assign" button
    Then the system should display an error message "Please select a team member to assign the task"
    And the task should not be assigned
