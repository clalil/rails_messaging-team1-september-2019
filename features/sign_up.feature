Feature: Signup to the webmail
    As a visitor
    In order to send and receive mail
    I would like to create an account

Background:
    Given I visit the signup page

Scenario: Creating an account
    When I fill in "Name" with "Joe"
    And I fill in "Email" with "joe@doe.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."

Scenario: Not entering any user data
    When I fill in "Name" with ""
    And I fill in "Email" with ""
    And I fill in "Password" with ""
    And I fill in "Password confirmation" with ""
    And I click "Create"
    Then I should see "Name can't be blank"
    Then I should see "Password can't be blank"
    Then I should see "Email can't be blank"

Scenario: Entering incorrect name
    When I fill in "Name" with "JoeJoeJoeJo"
   And I click "Create"
    Then I should see "Name is too long (maximum is 10 characters)"

Scenario: Entering incorrect password
    And I fill in "Password" with "passwor"
    And I fill in "Password confirmation" with "passwor"
    And I click "Create"
    Then I should see "Password is too short (minimum is 8 characters)"