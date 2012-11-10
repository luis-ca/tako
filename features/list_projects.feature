@javascript
Feature: Listing all projects

  Background:
    Given a project named sashimi
    And a project named sushi

  Scenario: Display list of projects
    When I am on the application
    Then I should see 2 project in the list of projects
