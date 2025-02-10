Feature: Revoke Admin Roles for Projects in Kanban Project Coordination System
  As an admin
  I want to revoke admin roles for projects
  So that I can limit project control

  Scenario: Admin successfully revokes an admin role from a user
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Alpha"
    When the admin clicks on the "Revoke Admin Role" button
    And the admin selects the user "Jane Doe"
    And the admin clicks the "Revoke" button
    Then Jane Doe should lose the admin role for "Project Alpha"
    And Jane Doe should no longer have administrative privileges for the project
  #Error Flow

  Scenario: Admin attempts to revoke an admin role from a user who is not an admin
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Beta"
    When the admin clicks on the "Revoke Admin Role" button
    And the admin selects a user "John Smith" who is not an admin
    And the admin clicks the "Revoke" button
    Then the system should display an error message "User does not have an admin role"
    And no admin role should be revoked
  #Alternative Flow

  Scenario: Admin cancels revoking an admin role
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Gamma"
    When the admin clicks on the "Revoke Admin Role" button
    And the admin selects the user "Alice Johnson"
    And the admin clicks the "Cancel" button
    Then the system should not revoke the admin role for "Alice Johnson"
    And Alice Johnson should retain her administrative privileges for the project
