Feature: Reply to Comments in Kanban Project Coordination System

  As a user
  I want to reply to comments on tasks
  So that I can keep discussions organized

  Scenario: User successfully replies to a comment
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the task "Task 1"
    And the user reads a comment "This task is almost complete"
    When the user clicks on "Reply" to the comment
    And the user enters the reply "Great, almost done!"
    And the user clicks the "Send" button
    Then the system should add the reply under the original comment
    And the reply should be visible to other users

  Scenario: User attempts to reply to a comment without entering text
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the task "Task 2"
    When the user clicks on "Reply" to the comment
    And the user leaves the reply box empty
    And the user clicks the "Send" button
    Then the system should display an error message "Please enter a reply"
    And no reply should be added
