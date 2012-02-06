Feature: Add Project Categories
  In order to group the projects by platforms and purposes
  As a site owner
  I want add categories to a project

  Background:
    Given I am logged in

  Scenario: Adding multiple categorires to a project
    Given I have a project
    And I have multiple categories
    When I add these categories to this project
    Then I should see these categories listed for this project
