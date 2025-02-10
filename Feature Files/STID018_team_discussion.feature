Feature: Participate in Discussions with My Team in Kanban Project Coordination System

  As a user
  I want to participate in discussions with my team
  So that we can brainstorm and solve problems together

  Scenario: User successfully participates in a discussion
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Alpha"
    When the user clicks on the "Discussion" button
    And the user enters a message "How do we solve issue X?"
    And the user clicks the "Send" button
    Then the system should display the message "How do we solve issue X?" in the discussion thread
    And the discussion should be visible to other team members

  Scenario: User attempts to participate in a discussion without entering a message
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Beta"
    When the user clicks on the "Discussion" button
    And the user leaves the message box blank
    And the user clicks the "Send" button
    Then the system should display an error message "Please enter a message before sending"
    And no new message should be added to the discussion thread

  Scenario: User views existing discussion messages
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects a project "Project Gamma"
    When the user clicks on the "Discussion" button
    Then the system should display a list of previous discussion messages
    And the user should be able to read and respond to existing messages
