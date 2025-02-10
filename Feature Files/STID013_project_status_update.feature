Feature: Update Project Status in Kanban Project Coordination System

  As a user
  I want to update the project status (In Progress, Completed, On Hold)
  So that the team knows the current project state

  Scenario: User successfully updates project status to "In Progress"
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    When the user clicks on the "Update Status" button
    And the user selects the status "In Progress"
    And the user clicks the "Save" button
    Then the system should update the status of "Project Alpha" to "In Progress"
    And the project page should display the updated status "In Progress"

  Scenario: User successfully updates project status to "Completed"
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks on the "Update Status" button
    And the user selects the status "Completed"
    And the user clicks the "Save" button
    Then the system should update the status of "Project Beta" to "Completed"
    And the project page should display the updated status "Completed"

  Scenario: User successfully updates project status to "On Hold"
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    When the user clicks on the "Update Status" button
    And the user selects the status "On Hold"
    And the user clicks the "Save" button
    Then the system should update the status of "Project Gamma" to "On Hold"
    And the project page should display the updated status "On Hold"

  Scenario: User attempts to update project status without selecting a status
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Delta"
    When the user clicks on the "Update Status" button
    And the user clicks the "Save" button without selecting a status
    Then the system should display an error message "Please select a status"
    And the project status should remain unchanged