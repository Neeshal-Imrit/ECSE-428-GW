Feature: System Scalability for Large Number of Concurrent Users

  As a system administrator
  I want the system to scale for 10,000 concurrent users
  So that it can handle a large number of teams and maintain performance

  Scenario: System can handle 10,000 concurrent users without degradation
    Given the system is under load with 10,000 concurrent users
    When users are interacting with various tasks, projects, and features
    Then the system should maintain acceptable performance, with response times under 3 seconds for 95% of actions

  Scenario: System performance remains stable with 10,000 users
    Given the system is handling 10,000 concurrent users
    When a user attempts to create a new project or task
    Then the system should process and save the new project or task within 3 seconds, without any errors or crashes
