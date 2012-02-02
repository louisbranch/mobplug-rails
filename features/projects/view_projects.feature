Feature: View Projects
	In order to know about previous projects
	As a potencial client
	I want to view all projects and their information

	Scenario: View projects
	  Given I have a project
	  When I go to the projects list
	  Then I should see this project listed

	Scenario: View projects of a category
	  Given I have a project
	  And this project has a category
	  When I go to this category page
	  Then I should see this project listed

  Scenario: View most recent project
    Given I have multiple projects
    When I go to the home page
    Then I should only see the most recent ones
