Feature: Deny category admin tasks from non-logged users
	In order to restrict who can manage categories
	As a site owner
	I want deny category admin tasks if the user is not logged in
	
	Background:
		Given I am not logged in

	Scenario: Deny see the categories page
		When I go to the categories page
		Then I should see "Not here, Cowboy!"

	Scenario: Deny create a new category
		When I go to the new category page
		Then I should see "Not here, Cowboy!"
		
	Scenario: Deny edit category
		Given I have "1" category
		When I go to this category edit page
		Then I should see "Not here, Cowboy!"
