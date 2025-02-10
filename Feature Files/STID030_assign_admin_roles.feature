Feature: Assign Admin Roles for Projects in Kanban Project Coordination System

  As an admin
  I want to assign admin roles for projects
  So that I can delegate project management responsibilities

  Scenario: Admin successfully assigns an admin role to a user
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Alpha"
    When the admin clicks on the "Assign Admin Role" button
    And the admin selects the user "Jane Doe"
    And the admin clicks the "Assign" button
    Then Jane Doe should receive an admin role for "Project Alpha"
    And Jane Doe should have administrative privileges for the project

  Scenario: Admin attempts to assign an admin role to a user who is not part of the project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Beta"
    When the admin clicks on the "Assign Admin Role" button
    And the admin selects a user "John Smith" who is not a project member
    And the admin clicks the "Assign" button
    Then the system should display an error message "User must be part of the project before being assigned an admin role"
    And no admin role should be assigned
