Feature: Signup to the webmail
As a visitor
In order to send and receive mail
I would like to create an account

Background:
Given I visit the "welcome#index" page
And I click "Sign up" link

Scenario: Creating an account
When I fill in "Name" with "Joe"
And I fill in "Email" with "joe@doe.com"
And I fill in "Password" with "12345678"
And I fill in "Password confirmation" with "12345678"
And I click "Create" button


