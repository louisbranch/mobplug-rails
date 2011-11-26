Feature: Manage Project Categories
	In order to group the projects by platforms and purposes
	As a site owner
	I want manage which categories a project has
	
	Background:
		Given I am logged in
		
	Scenario: Add categories to an existing project
		Given I have "1" project
		And the following categories:
			|	title      |
			|	Web App    |
			|	Mobile App |
			|	Game       |
		And I go to this project edit page
		And I check:
			|	Web App    |
			|	Mobile App |
		When I click on "Update Project"
		Then the project should have "2" categories
			
	Scenario: Add categories to a new project
		Given the following categories:
			|	title      |
			|	Web App    |
			|	Mobile App |
			|	Game       |
		And I go to the new project page
		And I fill the project form with valid information
		And I check:
			|	Web App    |
			|	Mobile App |
		When I click on "Create Project"
		Then the project should have "2" categories
