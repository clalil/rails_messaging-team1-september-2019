Feature: Login to Webmail
    As a user
    In order to send secure messages
    I would like to be able to login

Background:
    Given the following user exist:
        | name | email       | password |
        | Joe  | joe@doe.com | password |
    And I visit the landing page
    And I click "Login"

Scenario: Logging into my account
    When I fill in "Email" with "joe@doe.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Hello, Joe"

Scenario: Not entering any user data
    When I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password"
