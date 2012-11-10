@javascript
Feature: Create a ticket


  Scenario: Create a ticket
    Given I am on the application
    When I add a ticket named rice
    Then I should see a ticket named rice in the list of tickets