Feature: Deny project admin tasks from non-logged users
	In order to restrict who can manage projects
	As a site owner
	I want deny admin tasks if the user is not logged in
	
	Background:
		Given I am not logged in

	Scenario: Deny create a new project
		When I go to the new project page
		Then I should see "Not here, Cowboy!"
		
	Scenario: Deny edit project
		Given I have "1" project
		When I go to this project edit page
		Then I should see "Not here, Cowboy!"
