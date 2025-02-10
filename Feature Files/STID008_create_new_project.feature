Feature: Create New Projects in Kanban Project Coordination System

  As an admin
  I want to create new projects
  So that I can start managing the team's tasks

  Scenario: Admin successfully creates a new project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Create New Project" page
    When the admin enters the project name "Project Alpha"
    And the admin enters the project description "This is a description for Project Alpha"
    And the admin sets the project deadline to "2025-05-01"
    And the admin clicks the "Create Project" button
    Then the system should create the new project
    And the admin should be redirected to the newly created project's page
    And the new project should be displayed on the project dashboard

  Scenario: Admin attempts to create a project with missing information
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Create New Project" page
    When the admin leaves the project name empty
    And the admin clicks the "Create Project" button
    Then the system should display an error message "Project name is required"
    And the project creation should be unsuccessful

  Scenario: Admin successfully creates a project without a description
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Create New Project" page
    When the admin enters the project name "Project Beta"
    And the admin leaves the description empty
    And the admin sets the project deadline to "2025-06-01"
    And the admin clicks the "Create Project" button
    Then the system should create the new project with an empty description
    And the admin should be redirected to the newly created project's page