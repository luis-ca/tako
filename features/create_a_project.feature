@javascript
Feature: Create a project

  Scenario: Create a project

    Given I am on the application
    When I add a project named nigiri
    Then I should see a project named nigiri in the list of projects
    When I select the project named nigiri from the list
    Then I should see the details for the project named nigiri

  Scenario: A duplicate project
    Given a project named sashimi
    And I am on the application
    When I add a project named sashimi
    Then I should see the message 'name is already taken'
    And I should see 1 project in the list of projects