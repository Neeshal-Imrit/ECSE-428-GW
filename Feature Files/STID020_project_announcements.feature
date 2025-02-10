Feature: Send Announcements to All Project Members in Kanban Project Coordination System

  As an admin
  I want to send announcements to all project members
  So that everyone is informed about important updates

  Scenario: Admin successfully sends an announcement
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Alpha"
    When the admin clicks on the "Send Announcement" button
    And the admin enters the message "The project deadline has been extended"
    And the admin clicks the "Send" button
    Then the system should send the announcement "The project deadline has been extended" to all members
    And all project members should see the announcement

  Scenario: Admin attempts to send an announcement without entering a message
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Project Dashboard"
    And the admin selects a project "Project Beta"
    When the admin clicks on the "Send Announcement" button
    And the admin leaves the message box blank
    And the admin clicks the "Send" button
    Then the system should display an error message "Please enter a message before sending"
    And no announcement should be sent
