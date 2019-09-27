Feature: View sent mail in sent folder
  As a user
  In order to access sent mail
  I want to be able to review sent mail

  Background:
    Given following users exists
      | name   | email             | password | 
      | Jenny  | jenny@ranom.com   | password | 
      | Daniel | daniel@random.com | password | 
    And I am logged in as "Daniel"
    And I send a mail to "Jenny"

  Scenario: View sent message
    And I am on the inbox page
    When I click "Sent"
    Then I should see messages