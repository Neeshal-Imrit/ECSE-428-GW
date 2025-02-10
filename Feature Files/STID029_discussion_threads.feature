Feature: Create Discussion Threads in Kanban Project Coordination System

  As a user
  I want to create discussion threads in projects
  So that we can have structured conversations

  Scenario: User successfully creates a discussion thread
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Alpha"
    When the user clicks on the "Create Discussion" button
    And the user enters the discussion title "Project Timeline Feedback"
    And the user enters the message "Can we discuss the upcoming project deadline?"
    And the user clicks the "Post Discussion" button
    Then the system should create the discussion thread
    And the thread should be visible to all team members

  Scenario: User attempts to create a discussion without entering a title or message
    Given the user is logged into the Kanban system
    And the user navigates to the "Project Dashboard"
    And the user selects the project "Project Beta"
    When the user clicks on the "Create Discussion" button
    And the user leaves the title and message fields blank
    And the user clicks the "Post Discussion" button
    Then the system should display an error message "Please enter both a title and a message"
    And no discussion thread should be created
