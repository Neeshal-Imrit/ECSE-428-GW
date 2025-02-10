Feature: Receive Automated Reports in the Kanban Project Coordination System

  As a user
  I want to receive automated reports
  So that I can monitor project progress
  And stay informed about project status without manual updates

  Scenario: User receives a weekly progress report via email
    Given the user is logged into the Kanban system
    And the user has set their email preferences to receive weekly reports
    When the system generates the weekly progress report
    Then the system should send an email with the report to the user
    And the email should contain an overview of completed tasks, remaining tasks, and project milestones

  Scenario: User receives a daily task summary report
    Given the user is logged into the Kanban system
    And the user has set their email preferences to receive daily task summary reports
    When the system generates the daily task summary report
    Then the system should send an email with the report to the user
    And the email should list all tasks assigned to the user, their due dates, and their current status

  Scenario: User receives a project milestone completion report
    Given the user is logged into the Kanban system
    And the user is part of the project "Project Alpha"
    When the project milestone "Design Phase Completion" is marked as complete
    Then the system should automatically send an email to the user notifying them of the milestone completion
    And the email should contain information about the milestone and the updated project status

  Scenario: User customizes automated report frequency and content
    Given the user is logged into the Kanban system
    And the user navigates to the "Notifications Settings"
    When the user selects to receive reports bi-weekly instead of weekly
    And the user customizes the content to include "Task Deadlines", "Milestone Updates", and "Project Risks"
    And the user saves the preferences
    Then the system should update the user’s report settings to reflect the new preferences
    And the user should start receiving reports with the updated frequency and content

  Scenario: User does not receive automated report due to missing email
    Given the user is logged into the Kanban system
    And the user navigates to the "Notifications Settings"
    And the user has not entered an email address in their profile
    When the system attempts to send an automated report
    Then the system should display a warning "Please enter a valid email address to receive reports"
    And the report should not be sent until the user provides a valid email address
