@javascript
Feature: Create a ticket

  Scenario: Create a ticket
  Given I am on the application
    When I add a ticket named rice
    Then I should see a ticket named rice in the list of tickets

  Scenario: Show list of tickets
    Given a ticket ginger exists
    And I am on the application
    Then I should see a ticket named ginger in the list of tickets
