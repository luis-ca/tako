@javascript
Feature: Create a project

  Background:
    Given I am on the application

  Scenario: Create a project
    
    When I add a project named nigiri
    Then I should see a project named nigiri in the list of projects
    When I select the project named nigiri from the list
    Then I should see the details for the project named nigiri

  Scenario: A duplicate project
    Given a project named sashimi
    When I add a project named sashimi
    Then I should see the message 'project already exists'
    And I should see 1 project in the list of projects