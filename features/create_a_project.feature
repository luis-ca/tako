@javascript
Feature: Create a project

  Scenario: Create a project
    Given I am on newgulpd
    When I add a project
    Then I should see a project
