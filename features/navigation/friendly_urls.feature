Feature: Friendly URL for projects and categories
	In order to have more meaningful URLs for users to save, remember and share
	As a site admin
	I want to create URL for projects and categories base on their titles
	
	Scenario: Friendly URL for projects
		Given the following project:
			| title          |
			| Falling Blocks |
		When I go to this project page
		Then the URI should be "/projects/falling-blocks"
	
	Scenario: Friendly URL for categories
		Given the following category:
			| title       |
			| UX Designer |
		When I go to this category page
		Then the URI should be "/categories/ux-designer"
