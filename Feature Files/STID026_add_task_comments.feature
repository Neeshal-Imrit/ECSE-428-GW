Feature: Add Comments to Tasks in Kanban Project Coordination System

  As a user
  I want to add comments to tasks
  So that I can share updates or ask for clarifications

  Scenario: User successfully adds a comment to a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    And the user selects the task "Task 1"
    When the user enters the comment "This task is almost complete"
    And the user clicks the "Add Comment" button
    Then the system should add the comment to "Task 1"
    And the comment should be visible in the task details

  Scenario: User attempts to add a blank comment
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the task "Task 2"
    When the user leaves the comment box empty
    And the user clicks the "Add Comment" button
    Then the system should display an error message "Please enter a comment"
    And no comment should be added
