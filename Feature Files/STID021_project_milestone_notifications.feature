Feature: Be Notified When a Project Milestone is Completed in Kanban Project Coordination System

  As a user
  I want to be notified when a project milestone is completed
  So that I can stay informed about key project achievements and adjust my work

  Scenario: User receives a notification when a milestone is completed
    Given the user is logged into the Kanban system
    And the user is following the project "Project Alpha"
    And the user is subscribed to milestone notifications
    When the project "Project Alpha" reaches a milestone
    Then the system should send a notification to the user that the milestone has been completed
    And the user should be able to see the completed milestone in the "Milestone Notifications" section

  Scenario: User does not receive notifications for milestones they're not following
    Given the user is logged into the Kanban system
    And the user is not following the project "Project Beta"
    When the project "Project Beta" reaches a milestone
    Then the system should not send a notification to the user
  
   # Error flow
  Scenario: Error sending milestone notification
    Given the user is logged into the Kanban system
    And the user is following the project "Project Gamma"
    And the user is subscribed to milestone notifications
    When the project "Project Gamma" reaches a milestone
    And an error occurs while sending the notification
    Then the system should display an error message indicating the notification error
    And the user should not receive the milestone notification