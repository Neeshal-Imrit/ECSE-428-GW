Feature: Create Reusable Project Templates in Kanban Project Coordination System

  As an admin
  I want to create reusable project templates
  So that I can save time when starting new projects
  And ensure consistency across similar projects
  So that all team members can quickly set up projects with the required structure and tasks

  Scenario: Admin successfully creates a project template with detailed settings
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Alpha"
    When the admin clicks on the "Create Template" button
    And the admin enters the template name "Project Template 1"
    And the admin selects the category "Marketing"
    And the admin adds a description "Template for marketing projects with key deliverables"
    And the admin chooses the task default structure which includes "Initial Planning", "Execution", "Review", and "Completion"
    And the admin sets the default project deadline to "2025-06-30"
    And the admin clicks the "Save Template" button
    Then the system should save "Project Template 1" in the template library
    And the template should include the default task structure, deadline, and category
    And the template should be available for use in future projects
    And the admin should receive a confirmation message "Template 'Project Template 1' created successfully"
    
  Scenario: Admin attempts to create a template without providing necessary information
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin clicks on the "Create Template" button
    When the admin leaves the template name blank
    And the admin does not select a category or task structure
    And the admin clicks the "Save Template" button
    Then the system should display an error message "Template name, category, and task structure are required"
    And the admin should not be able to save the template
    And the template creation process should not proceed

  Scenario: Admin creates a template and assigns specific permissions
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Beta"
    When the admin clicks on the "Create Template" button
    And the admin enters the template name "Project Template 2"
    And the admin selects the category "Development"
    And the admin adds a description "Template for software development projects"
    And the admin chooses the task default structure which includes "Requirements Gathering", "Development", "Testing", and "Deployment"
    And the admin sets the default project deadline to "2025-12-31"
    And the admin assigns the template to the "Development Team" group
    And the admin clicks the "Save Template" button
    Then the system should save "Project Template 2" with the assigned permissions
    And the template should be available only to the "Development Team" group
    And the admin should receive a confirmation message "Template 'Project Template 2' created successfully with team permissions"

    # Error Flow
  Scenario: System fails to save project template due to server error
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects the project "Project Gamma"
    When the admin clicks on the "Create Template" button
    And the admin enters the template name "Project Template 3"
    And the admin selects the category "Operations"
    And the admin adds a description "Template for operations projects"
    And the admin chooses the task default structure which includes "Planning", "Execution", "Monitoring", and "Closure"
    And the admin sets the default project deadline to "2025-09-30"
    And the admin clicks the "Save Template" button
    And a server error occurs
    Then the system should display an error message "Failed to save project template due to server error. Please try again later."
    And the system should log the error for further investigation
