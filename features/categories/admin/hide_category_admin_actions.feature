Feature: Hide admin tasks from logged users
	In order to restrict who can view the links to manage categories
	As a site owner
	I want hide those links if the user is not logged in
	
	Background:
		Given I am not logged in

	Scenario: Hide New Category task
		When I am on the categories page
		Then I should not see "New Category"
		
	Scenario: Hide Edit Category task
		Given I have "1" category
		When I go to this category page
		Then I should not see "Edit"
	
	Scenario: Hide Delete Category task
		Given I have "1" category
		When I go to this category page
		Then I should not see "Delete"
