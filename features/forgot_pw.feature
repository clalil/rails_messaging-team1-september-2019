Feature: Forgot password
    As a user
    In order to login after forgetting my password
    I expect to have the option to change password

    Background:
        Given the following user exist:
            | name | email       | password |
            | Joe  | joe@doe.com | password |
        And I visit the landing page
        And I click "Login"
        And I click "Forgot your password?"

    Scenario: Successfully resetting password
        When I fill in "Email" with "joe@doe.com"
        And I click "Send me reset password instructions"
        And an email has been sent to me 
        Then the email should include "Hello joe@doe.com"

