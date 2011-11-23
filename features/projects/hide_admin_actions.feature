Feature: Hide admin tasks from logged users
	In order to restrict who can view the links to manage projects
	As a site owner
	I want hide those links if the user is not logged in
	
	Background:
		Given I am not logged in

	Scenario: Hide New Project task
		When I am on the projects page
		Then I should not see "New Project"
		
	Scenario: Hide Edit Project task
		Given I have "1" project
		When I go to this project page
		Then I should not see "Edit"
	
	Scenario: Hide Delete Project task
		Given I have "1" project
		When I go to this project page
		Then I should not see "Delete"
