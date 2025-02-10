Feature: View Project Timeline in Kanban Project Coordination System

  As a user
  I want to view a timeline of the project's milestones
  So that I can better understand project deadlines

  Scenario: User successfully views project timeline
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    When the user clicks on the "View Timeline" button
    Then the system should display a timeline of all milestones for "Project Alpha"
    And the timeline should show the milestones with their deadlines and progress

  Scenario: User views project timeline with overdue milestones
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks on the "View Timeline" button
    Then the system should display a timeline with milestones that are overdue
    And the overdue milestones should be marked with a red label

  Scenario: User views project timeline with upcoming milestones
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    When the user clicks on the "View Timeline" button
    Then the system should display a timeline with upcoming milestones
    And each upcoming milestone should show the planned deadline and progress

  Scenario: User views an empty project timeline
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Delta" with no milestones
    When the user clicks on the "View Timeline" button
    Then the system should display a message "No milestones found for this project"
    And the user should be able to add milestones to the project
