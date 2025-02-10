Feature: Upload and Manage Project Files in Kanban Project Coordination System

  As a user
  I want to upload and manage project files
  So that I can share necessary documents with the team

  Scenario: User successfully uploads a project file
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    When the user clicks the "Upload File" button
    And the user selects a file "project_plan.pdf"
    And the user clicks the "Upload" button
    Then the system should successfully upload the file
    And the uploaded file "project_plan.pdf" should appear in the project file list

  # Error Flow
  Scenario: User attempts to upload a file with an unsupported format
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks the "Upload File" button
    And the user selects a file "image.png"
    And the user clicks the "Upload" button
    Then the system should display an error message "Unsupported file format"
    And the file should not be uploaded

  Scenario: User deletes a project file
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    And the user sees the file "project_plan.pdf" in the project file list
    When the user clicks the "Delete" button next to "project_plan.pdf"
    And the user confirms the deletion
    Then the system should remove the file "project_plan.pdf" from the project file list
    And the user should see a message "File deleted successfully"