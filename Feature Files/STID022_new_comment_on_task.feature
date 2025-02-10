Feature: Be Notified When Someone Comments on a Task I'm Involved In
  As a user
  I want to be notified when someone comments on a task I'm involved in
  So that I can respond promptly

  Scenario: User receives a notification when someone comments on a task they're involved in
    Given the user is logged into the Kanban system
    And the user is assigned to the task "Task 1" in project "Project Alpha"
    When another team member comments on "Task 1"
    Then the system should send a notification to the user about the new comment on "Task 1"
    And the user should be able to see the comment in the task details

  Scenario: User does not receive notifications for tasks they are not involved in
    Given the user is logged into the Kanban system
    And the user is not assigned to the task "Task 2" in project "Project Beta"
    When another team member comments on "Task 2"
    Then the system should not send a notification to the user
  #Alternative Flow

  Scenario: User disables notifications for comments on tasks
    Given the user is logged into the Kanban system
    And the user navigates to the "Notification Settings"
    When the user turns off notifications for comments on tasks
    Then the system should not send any notifications to the user for comments on tasks
