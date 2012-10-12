@javascript
Feature: Create a project

  Scenario: Create a project
    Given I am on newgulpd
    When I add a project named cool project
    Then I should see a project named cool project in the list of projects

  Scenario: Show project in list
    Given a project named mindshare
    When I am on newgulpd
    Then I should see a project named mindshare in the list of projects

  Scenario: Show project details
    Given a project named sushi
    And I am on newgulpd
    When I select project sushi from the list
    Then I should see the project details
