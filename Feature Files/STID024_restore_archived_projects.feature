Feature: Restore Archived Projects in Kanban Project Coordination System

  As an admin
  I want to restore archived projects
  So that I can access them if needed

  Scenario: Admin successfully restores an archived project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Archived Projects" section
    And the admin selects the archived project "Project Alpha"
    When the admin clicks on the "Restore Project" button
    Then the system should restore "Project Alpha"
    And "Project Alpha" should be moved back to the "Active Projects" section

  Scenario: Admin attempts to restore a project that does not exist
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Archived Projects" section
    And the admin selects a project "Project Gamma" that is not archived
    When the admin clicks on the "Restore Project" button
    Then the system should display an error message "Project not found in archived projects"
    And no project should be restored
