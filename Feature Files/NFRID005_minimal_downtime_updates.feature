Feature: Minimal Downtime During System Updates

  As a system administrator
  I want system updates to occur with minimal downtime
  So that user productivity is not disrupted

  Scenario: System performs an update with minimal downtime
    Given the system is undergoing a scheduled update
    When the update begins
    Then the system should display a maintenance notice to users
    And the system downtime should not exceed 5 minutes
    And the system should be fully operational after the update

  Scenario: Users are informed of the update schedule
    Given the system has a scheduled maintenance update
    When the update is about to begin
    Then the system should notify users in advance via email or in-app notification
    And users should have at least 24 hours' notice before the scheduled downtime

  Scenario: System resumes normal operation after an update
    Given the system has completed a scheduled update
    When the user logs back into the system
    Then the system should resume normal operation with no errors or performance issues
