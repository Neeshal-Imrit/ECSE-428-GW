Feature: Receive Task Due Date Reminders in Kanban Project Coordination System

  As a user
  I want to receive task due date reminders
  So that I stay on track with project deadlines

  Scenario: User receives a reminder before a task's due date
    Given the user is logged into the Kanban system
    And the user is assigned to the task "Task 1" with a due date of "2025-02-20"
    When the due date is approaching, 24 hours before
    Then the system should send a reminder notification to the user for "Task 1"

  Scenario: User does not receive reminders for tasks with no due date
    Given the user is logged into the Kanban system
    And the user is assigned to the task "Task 2" with no due date set
    When the due date arrives
    Then the system should not send a reminder for "Task 2"
