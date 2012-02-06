Feature: Manage Categories
  In order to arrange our previous projects into categories
  As a site admin
  I want to create and manage categories

  Background:
    Given I am logged in

  Scenario: Creating a new category
    When I create a new category
    Then I should see this new category listed

  Scenario: Editing a category
    Given I have a category
    When I edit this category information
    Then this category should have been updated

  Scenario: Deleting a category
    Given I have a category
    When I delete this category
    Then I should no longer see this category listed
