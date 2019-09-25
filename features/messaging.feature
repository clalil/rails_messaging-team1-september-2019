Feature: List mail on inbox page
    As a user
    In order to read mail
    I expect to view a list of mail assorted by date

Background:
  Given following users exists
    | name   | email             | password |
    | Jenny  | jenny@ranom.com   | password |
    | Daniel | daniel@random.com | password |

Scenario: Deleting a message
  Given I am logged in as "Daniel"
  And I send a mail to "Jenny"
  And I am on the home page
  And I click on the "Logout" link
  Given I am logged in as "Jenny"
  And I am on the home page
  And I click on the "Inbox" link
  Then I should see "1" messages
  And I click on the "View" link
  And I click on the "Move to trash" link
  Then I should see "0" messages 