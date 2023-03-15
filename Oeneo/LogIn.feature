#context
@preprod

#properties
@ui
@critical

#goal
@login


Feature: Log in
    As an user, I want to logIn to the Oeneo portal

    Scenario: Log in Success
        Given User is on Home Page
        When User click on "sign in"
        Then the logIn screen should be display

        Given User is on the login screen
        When User fills <Username>
        And User fills <Password>
        And User click on LogIn Button
        Then User should be connected
        And User name should be present on the header
        Examples:
            | Username | Password |
            | lgmy     | 1234     |

