Feature: User Session Timeout for Enhanced Account Security

  As a user
  I want to be logged out automatically after 30 minutes of inactivity
  So that my account is more secure

  Scenario: User is automatically logged out after 30 minutes of inactivity
    Given the user is logged into the Kanban system
    And the user has been inactive for 30 minutes
    When the system detects the inactivity
    Then the user should be logged out automatically
    And the user should be redirected to the login page with a session timeout message

  Scenario: User is not logged out if there is activity within 30 minutes
    Given the user is logged into the Kanban system
    And the user interacts with the system (e.g., clicks a task or updates a project)
    When the user has been inactive for less than 30 minutes
    Then the system should not log out the user
    And the user should remain logged in and continue working
    
  #Error Flow
  Scenario: User is not logged out after 30 minutes of inactivity on an android device
    Given the user is logged into the Kanban system using his android device 
    And the user does not interact with the system (e.g., clicks a task or updates a project)
    When the user has been inactive for more than 30 minutes
    Then the system should not log out the user
    And the user should remain logged in and continue working
