Feature: Deny role admin tasks from non-logged users
	In order to restrict who can manage roles
	As a site admin
	I want deny role admin tasks if the user is not logged in
	
	Background:
		Given I am not logged in
	
	Scenario: Deny view roles on roles page
		When I go to the roles page
		Then I should see "Not here, Cowboy!"

	Scenario: Deny create a new role
		When I go to the new role page
		Then I should see "Not here, Cowboy!"
		
	Scenario: Deny edit role
		Given I have "1" role
		When I go to this role edit page
		Then I should see "Not here, Cowboy!"
