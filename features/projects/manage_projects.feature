Feature: Manage Projects
  In order to show our previous projects to future clients
  As a site admin
  I want to create and manage projects

  Background:
    Given I am logged in

  Scenario: Creating a new project
    When I create a new project
    Then I should see a project listed

  Scenario: Editing an existing project
    Given I have a project
    When I edit this project information
    Then this project should have been updated

  Scenario: Deleting an existing project
    Given I have a project
    When I delete this project
    Then I should no longer see this project listed
