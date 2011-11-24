Feature: Add Categories to Projects
	In order to group the projects by platforms and purposes
	As a site owner
	I want to add one or more categories to each project
	
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
		  |	title      |
			|	Web App    |
			|	Mobile App |
		When I click on "Update Project"
		Then I should be redirected to this project page
		And I should see:
		  |	title      |
			|	Web App    |
			|	Mobile App |
		And show me the page
