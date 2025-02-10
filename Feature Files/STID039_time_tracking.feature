Feature: Log the Time Spent on Each Task in the Kanban Project Coordination System
  As a user
  I want to log the time I spend on each task
  So that I can track and report my work hours
  And ensure accurate project time management

  Scenario: User successfully logs time for a task
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Alpha"
    And the user selects the task "Task 1: Research Phase"
    When the user clicks on the "Log Time" button
    And the user enters "4" hours spent
    And the user adds a note "Completed initial research phase"
    And the user clicks the "Save Time Log" button
    Then the system should save the time log for "Task 1: Research Phase"
    And the system should display the time logged as "4 hours"
    And the time entry should be visible in the task details

  Scenario: User attempts to log time without specifying the duration
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Beta"
    And the user selects the task "Task 2: Design"
    When the user clicks on the "Log Time" button
    And the user leaves the time duration field blank
    And the user clicks the "Save Time Log" button
    Then the system should display an error message "Time duration is required"
    And the system should not save the time log

  Scenario: User logs time for multiple tasks
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Gamma"
    When the user selects the task "Task 1: Planning"
    And the user logs "3" hours spent
    And the user adds a note "Task planning completed"
    And the user saves the log
    And the user selects the task "Task 2: Development"
    And the user logs "5" hours spent
    And the user adds a note "Started coding phase"
    And the user saves the log
    Then the system should save both time logs for "Task 1: Planning" and "Task 2: Development"
    And the system should display the respective hours spent on each task
   #Error Flow

  Scenario: System fails to save time log due to server error
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Delta"
    And the user selects the task "Task 3: Testing"
    When the user clicks on the "Log Time" button
    And the user enters "2" hours spent
    And the user adds a note "Initial testing phase"
    And the user clicks the "Save Time Log" button
    And a server error occurs
    Then the system should display an error message "Failed to save time log due to server error. Please try again later."
    And the system should log the error for further investigation
