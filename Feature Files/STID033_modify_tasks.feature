Feature: Modify Tasks in Projects in Kanban Project Coordination System
  As a user
  I want to modify tasks in projects
  So that I can adjust task details if needed

  Scenario: User successfully modifies a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Alpha"
    And the user selects the task "Task 1"
    When the user clicks on the "Edit Task" button
    And the user updates the task description to "Updated task description"
    And the user changes the task deadline to "2025-03-01"
    And the user clicks the "Save Changes" button
    Then the system should update the task details for "Task 1"
    And the task should show the updated description and deadline

  Scenario: User attempts to modify a task with invalid input
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Beta"
    And the user selects the task "Task 2"
    When the user clicks on the "Edit Task" button
    And the user enters an invalid deadline "invalid date"
    And the user clicks the "Save Changes" button
    Then the system should display an error message "Please enter a valid deadline"
    And the task details should not be updated
  #Alternative Flow

  Scenario: User cancels task modification
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Gamma"
    And the user selects the task "Task 3"
    When the user clicks on the "Edit Task" button
    And the user updates the task description to "New task description"
    And the user changes the task deadline to "2025-04-01"
    And the user clicks the "Cancel" button
    Then the system should not save the changes
    And the task details should remain unchanged
