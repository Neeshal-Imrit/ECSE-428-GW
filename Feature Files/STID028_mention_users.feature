Feature: Mention Users in Task Comments in Kanban Project Coordination System

  As a user
  I want to mention other users in task comments
  So that I can notify specific teammates

  Scenario: User successfully mentions another user in a task comment
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the task "Task 1"
    When the user enters the comment "Can you review this, @JohnDoe?"
    And the user clicks the "Add Comment" button
    Then the system should mention "@JohnDoe" in the comment
    And John Doe should receive a notification about the mention

  Scenario: User attempts to mention a user who is not in the system
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the task "Task 2"
    When the user enters the comment "Can you review this, @NotInSystem?"
    And the user clicks the "Add Comment" button
    Then the system should display an error message "User not found"
    And the comment should not be added
