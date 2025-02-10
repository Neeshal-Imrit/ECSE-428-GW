Feature: View Project Overview in Kanban Project Coordination System

  As a user
  I want to view an overview of my project
  So that I can track the project's progress

  Scenario: User successfully views project dashboard
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    Then the user should see an overview of all their projects
    And each project should display key details such as name, progress, and deadlines
    And the user should be able to click on a project to view more details

  Scenario: User views an empty project dashboard
    Given the user is logged into the Kanban system
    And the user has no active projects
    When the user navigates to the "Project Dashboard"
    Then the user should see a message "No active projects"
    And the user should see an option to "Create New Project"

  Scenario: User views project dashboard with overdue projects
    Given the user is logged into the Kanban system
    And the user has overdue projects
    When the user navigates to the "Project Dashboard"
    Then the user should see an "Overdue" label on projects that are past their deadline
    And the overdue projects should be listed at the top of the dashboard

  Scenario: User views project dashboard with projects in various states
    Given the user is logged into the Kanban system
    And the user has projects with different statuses (e.g., In Progress, Completed, On Hold)
    When the user navigates to the "Project Dashboard"
    Then the user should see a color-coded status indicator next to each project
    And the user should be able to filter projects by status (e.g., "Show Completed", "Show In Progress")

  # Error flow
  Scenario: Error loading project dashboard
    Given the user is logged into the Kanban system
    When the user navigates to the "Project Dashboard"
    And an error occurs while loading the dashboard
    Then the system should display an error message "Unable to load project dashboard"
    And the user should have the option to retry loading the dashboard