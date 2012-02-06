Feature: Manage Project Roles
  In order to group the projects by roles performed
  As a site admin
  I want add roles to a project

  Background:
    Given I am logged in

  Scenario: Adding roles to a project
    Given I have a project
    And I have multiple roles
    When I add these roles to this project
    Then I should see these roles listes for this project
