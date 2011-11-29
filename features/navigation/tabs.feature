Feature: Navigation through tabs
	In order to know in which section of the site I am
	As a user
	I want to view the corresponding tab
	
	Scenario Outline: Main sections navigation
		When I go to the <path>
		Then I should see the tab "<tab>" as active in the navigation bar
		
		Examples:
			| path          | tab      |
			| home page     | home     |
			| projects page | projects |
			| about page    | about    |
			| contact page  | contact  |
	
	Scenario: Projects navigation
		Given I have "1" project
		When I go to this project page
		Then I should see the tab "projects" as active in the navigation bar
	
	Scenario: Categories navigation
		Given I have "1" category
		When I go to this category page
		Then I should see the tab "projects" as active in the navigation bar
