Feature: System Response Time for Smooth User Experience

  As a user
  I want the system to respond to my actions in under 2 seconds
  So that my experience is smooth and efficient without delays

  Scenario: System responds within 2 seconds for a typical action
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    When the user clicks on the "Create Task" button
    Then the system should respond and display the "Create Task" form within 2 seconds

  Scenario: System responds within 2 seconds for data fetching
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    When the user views the list of tasks for "Project Alpha"
    Then the system should load and display the task list within 2 seconds

  Scenario: System responds within 2 seconds for navigating between pages
    Given the user is logged into the Kanban system
    And the user is on the "Project Dashboard"
    When the user clicks on the "Team" tab
    Then the system should load and display the "Team" page within 2 seconds
