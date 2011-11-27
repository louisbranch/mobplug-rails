Feature: View Categories as a potencial client
	In order to know which categories are available
	As a user
	I want to view all categories

	Scenario: View the categories list on the categories page
		Given the following categories:
			|	title      |
			|	Web App    |
			|	Mobile App |
		When I go to the categories page
		Then I should see:
			|	Web App    |
			|	Mobile App |

	Scenario: View the categories list on the projects page
		Given the following categories:
			|	title      |
			|	Web App    |
			|	Mobile App |
		When I go to the projects page
		Then I should see:
			|	Web App    |
			|	Mobile App |
			
	Scenario: View a category information from the categories page
		Given a category "Web App" exists
		And I am on the categories page
		When I click on "Web App"
		Then I should be redirected to this category page
		And I should see "Web App"
	
	Scenario: View a category information from the projects page without javascript
		Given a category "Web App" exists
		And I am on the projects page
		When I click on "Web App"
		Then I should be redirected to this category page
		And I should see "Web App"
