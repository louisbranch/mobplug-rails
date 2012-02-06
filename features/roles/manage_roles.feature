Feature: Manage Roles
  In order to arrange our previous projects into roles performed
  As a site admin
  I want to create and manage roles

  Background:
    Given I am logged in

  Scenario: Creating a new role
    When I create a new role
    Then I should see a new role listed

  Scenario: Editing a role
    Given I have a role
    When I update this role
    Then this role should have been updated

  Scenario: Deleting a role
    Given I have a role
    When I delete this role
    Then I should no longer see this role listed
