Feature: Archive Completed Projects in Kanban Project Coordination System

  As an admin
  I want to archive completed projects
  So that I can declutter the project list

  Scenario: Admin successfully archives a project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a completed project "Project Alpha"
    When the admin clicks on the "Archive Project" button
    Then the system should archive "Project Alpha"
    And "Project Alpha" should be moved to the "Archived Projects" section

  Scenario: Admin attempts to archive a project that is not completed
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects an active project "Project Beta"
    When the admin clicks on the "Archive Project" button
    Then the system should display an error message "Only completed projects can be archived"
    And "Project Beta" should remain in the active projects list
