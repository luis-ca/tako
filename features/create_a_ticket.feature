@javascript
Feature: Create a ticket

  Scenario: Show list of tickets

    Given a ticket ginger exists
    And I am on the application
    When I choose All tickets
    Then I should see a ticket named ginger and numbered as 1 in the list of tickets

  Scenario: Create a ticket

    Given I am on the application
    And I choose All tickets
    When I add a ticket named rice
    Then I should see a ticket named rice and numbered as 1 in the list of tickets

  @solo
  Scenario: Create a ticket within a project

    Given I am on the sushi project
    When I add a ticket named rice
    Then I should see a ticket named rice tagged with sushi
