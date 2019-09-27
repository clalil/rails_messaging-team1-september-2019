Feature: Delete mail on inbox page
  As a user
  In order to keep my inbox clean
  I want to be able to delete my mail

  Background:
    Given following users exists
      | name   | email             | password |
      | Jenny  | jenny@ranom.com   | password |
      | Daniel | daniel@random.com | password |
    And I am logged in as "Daniel"
    And I send a mail to "Jenny"
    And I am on the home page
    And I click "Logout"

  Scenario: Deleting a message
    Given I am logged in as "Jenny"
    And I am on the home page
    When I click "Inbox"
    Then I should see "1" messages
    When I click "View"
    And I click "Move to trash"
    Then I should see "0" messages