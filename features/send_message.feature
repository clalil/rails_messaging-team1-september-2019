Feature: Send email
  As a user
  In order to compose mail
  I expect to be able to send a message and subject to a select email

  Background:
    Given following users exists
      | name   | email             | password |
      | Jenny  | jenny@ranom.com   | password |
      | Daniel | daniel@random.com | password |
    And I am logged in as "Daniel"
    And I am on the inbox page

  Scenario: Send a message
    When I click "Compose"
    And I select the "Recipients" of "Jenny"
    And I fill in "Subject" with "sbj"
    And I fill in "Message" with "Hello"
    And I click "Send Message"
    And I should see "Your message was successfully sent!"


