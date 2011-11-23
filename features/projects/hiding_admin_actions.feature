Feature: Hiding Administration tasks from non-admin users
	In order to restrict who can view the administration links to manage projects
	As a site owner
	I want hide those links if the user is not logged as an admin
	
	Background:
		Given I am not logged as an admin

	Scenario: Hiding New Project task
		When I am on the projects list page
		Then I should not see "New Project"
