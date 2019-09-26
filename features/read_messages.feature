Feature: Read mail in inbox
  As a user
  In order to read my mail
  I expect to view a thread of mail assorted by date and time

  Background:
    Given following users exists
      | name   | email             | password | 
      | Jenny  | jenny@ranom.com   | password | 
      | Daniel | daniel@random.com | password | 
    And I am logged in as "Daniel"
    And I send a mail to "Jenny"
    And I am on the home page
    And I click "Logout" 

  Scenario: Reading a message
    Given I am logged in as "Jenny"
    And I am on the home page
    When I click "Inbox"
    Then I should see "1" messages
    When I click "View" 
    And I should see messages