Feature: Integrate Third-Party Tools in Kanban Project Coordination System

  As an admin
  I want to integrate third-party tools with the Kanban system
  So that I can enhance project functionality

  Scenario: Admin successfully integrates a third-party tool
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Integration Settings" page
    When the admin clicks on the "Add Integration" button
    And the admin selects the third-party tool "Slack"
    And the admin clicks the "Connect" button
    Then the system should integrate "Slack" with the Kanban system
    And the admin should see the "Slack" integration listed in the settings

  Scenario: Admin attempts to integrate an unsupported third-party tool
    Given the admin is logged into the Kanban system
    And the admin navigates to the "Integration Settings" page
    When the admin clicks on the "Add Integration" button
    And the admin selects a tool not supported by the system
    And the admin clicks the "Connect" button
    Then the system should display an error message "Tool not supported"
    And no integration should be created
