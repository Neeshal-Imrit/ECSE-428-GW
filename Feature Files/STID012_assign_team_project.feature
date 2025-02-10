Feature: Assign Team Members to Specific Projects in Kanban Project Coordination System

  As an admin
  I want to assign team members to specific projects
  So that tasks can be distributed across the team

  Scenario: Admin successfully assigns a team member to a project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Alpha"
    When the admin clicks on the "Assign Team Member" button
    And the admin selects a team member "John Doe"
    And the admin clicks the "Assign" button
    Then the system should assign "John Doe" to "Project Alpha"
    And the admin should see "John Doe" listed as a team member on the project page

  Scenario: Admin assigns multiple team members to a project
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Beta"
    When the admin clicks on the "Assign Team Member" button
    And the admin selects team members "John Doe" and "Jane Smith"
    And the admin clicks the "Assign" button
    Then the system should assign both "John Doe" and "Jane Smith" to "Project Beta"
    And both team members should be listed as part of the project team

  Scenario: Admin attempts to assign a team member who is already assigned
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Gamma"
    When the admin clicks on the "Assign Team Member" button
    And the admin selects a team member "John Doe" who is already assigned to the project
    Then the system should display an error message "This team member is already assigned to this project"
    And no changes should be made to the team member list
