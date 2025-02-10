Feature: Create Account
    As an unregistered user,
    I want to create an account, 
    So that others can see my account and that I can create and be added to projects.

    # Normal Flow
    Scenario Outline: Successful account creation
    Given Unregistered user
    When the user provides vlaid registration details "<email>", "<username>", "password">
    And the user clicks on register
    Then the user account should be created
    And other's should be able to see the user account

    Examples:
    |Email           | Username | Password|
    |johndoe@mail.com| johndoe  | abcd123!|


    #Error Flow: Missing details
    Scenario: Create account with invalid field
        Given the user is unregistered
        When the user provide incomplete details when registering
        And the user clicks on register
        Then the user should see an error message
        Then their account should not be created.

    Scenario: Create account with existing email.
        Given the user is unregistered
        And the user provides an email that is already registered
        When the user clicks on register button
        Then The user sees an error message.

