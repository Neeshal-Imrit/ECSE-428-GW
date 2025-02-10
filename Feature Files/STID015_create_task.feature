Feature: Create Tasks for a Project in Kanban Project Coordination System

  As a user
  I want to create tasks for a project
  So that I can break down the work into manageable pieces

  Scenario: User successfully creates a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    When the user clicks on the "Create Task" button
    And the user enters task details "Task 1", "Description of Task 1"
    And the user clicks the "Save" button
    Then the system should create the task "Task 1"
    And the task "Task 1" should appear in the project task list

  # Error flow
  Scenario: User attempts to create a task without entering details
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks on the "Create Task" button
    And the user leaves the task details blank
    And the user clicks the "Save" button
    Then the system should display an error message "Please fill in all task details"
    And the task should not be created

  Scenario: User creates a task with a specific priority
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    When the user clicks on the "Create Task" button
    And the user enters task details "High Priority Task", "Critical task description"
    And the user selects priority "High"
    And the user clicks the "Save" button
    Then the system should create the task "High Priority Task"
    And the task should be marked as "High Priority" in the task list
