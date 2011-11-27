Feature: Manage Project Roles
	In order to group the projects by roles performed
	As a site admin
	I want manage which roles a project has
	
	Background:
		Given I am logged in
		
	Scenario: Add roles to an existing project
		Given I have "1" project
		And the following roles:
			|	title       |
			|	Developer   |
			|	UX Designer |
			|	UI Desginer |
		And I go to this project edit page
		And I check:
			|	Developer   |
			|	UX Designer |
		When I click on "Update Project"
		Then the project should have "2" roles
			
	Scenario: Add roles to a new project
		Given the following roles:
			|	title       |
		  |	Developer   |
			|	UX Designer |
			|	UI Desginer |
		And I go to the new project page
		And I fill the project form with valid information
		And I check:
			|	UX Designer |
			|	UI Desginer |
		When I click on "Create Project"
		Then the project should have "2" roles
