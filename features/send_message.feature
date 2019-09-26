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
   
  
  Scenario: Send a message
    Given I am logged in as "Daniel"
    And I am on the home page
    When I click "Inbox"
    And I am on the inbox page
    When I click "Compose" 
    And I select the "Recipients" of "Jenny"
    And I fill in "Subject" with "sbj"
    And I fill in "Message[body]" with "Hello"
    And I click "Send Message"
    And I see "message was successfully sent! "
