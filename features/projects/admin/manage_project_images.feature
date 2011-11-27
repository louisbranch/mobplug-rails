Feature: Manage Project Images
	In order to show how the project looks to potencial clients
	As a site admin
	I want to insert one or more images into projects
	
	Background:
		Given I am logged in
	
	Scenario: Insert images into a new project
		Given I go to the new project page
		And I fill the project form with valid information
		And I attach the 1st image field with "screenshot1.png"
		And I attach the 2nd image field with "screenshot2.png"
		When I click on "Create Project"
		Then I should see the images:
		| Screenshot1 |
		| Screenshot2 |
	
	Scenario: Insert images into a existing project
		Given I have "1" project
		And I go to this project edit page
		And I attach the 1st image field with "screenshot1.png"
		And I attach the 2nd image field with "screenshot2.png"
		When I click on "Update Project"
		Then I should see the images:
		| Screenshot1 |
		| Screenshot2 |
	
	Scenario: Remove images from a existing project
		Given I have the following project and images:
		 | project   | images                           |
		 | MyCoupons | screenshot1.png, screenshot2.png |
		And I go to this project edit page
		And I check "Delete" for the 1st image
		And I click on "Update Project"
		Then I should not see the image:
		| Screenshot1 |
		But I should see the image:
		| Screenshot2 |
