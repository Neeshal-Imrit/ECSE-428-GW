Feature: Mobile Responsiveness for Task and Project Management

  As a user
  I want to use the system on my phone
  So that I can manage tasks and projects on the go

  Scenario: System is responsive on a mobile device
    Given the user is using a mobile device
    When the user accesses the Kanban system
    Then the system should display the "Project Dashboard" in a mobile-friendly layout
    And the user should be able to view and interact with tasks and project details

  Scenario: User navigates the project dashboard on mobile
    Given the user is logged into the Kanban system on a mobile device
    When the user clicks on a task from the "Project Dashboard"
    Then the system should load the task details in a responsive view suitable for mobile

  # Error Flow
  Scenario: User creates a task on mobile and the device froze
    Given the user is logged into the Kanban system on a mobile device
    When the user clicks on the "Create Task" button
    Then the system should display the task creation form optimized for mobile use
    Then  the system crashes and an error message is displayed
    And the system  logs the event
