Feature: View Categories
	In order to know which categories are available
	As a site owner
	I want to view all categories and their information
		
	Scenario: View the categories list
		Given I am logged in
		And the following categories:
			|	title      |
			|	Web App    |
			|	Mobile App |
			|	Game       |
		When I go to the categories page
		Then I should see:
			|	title      |
			|	Web App    |
			|	Mobile App |
			|	Game       |
