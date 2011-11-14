Feature: Manage Projects
	In order to show our previous projects to future clients
	As a site administrator
	I want to create and manage projects

	Scenario Outline: Create a new project
		Given I am on the projects list page
		And I click a link to the new project page
		And I fill in "Title" with "<title>"
		And I fill in "Description" with "<description>"
		When I submit the form
		Then I should be redirect to the <path>
		And I should a see "<message>" message
		
		Scenarios:
      | title 				| description														|	path								| message											 |
      | MyCoupons.com | A web app to organize online coupons. |	projects list page	| Project Created!						 |
      |    						| A web app to organize online coupons. |	new project page		| Invalid Project Information! |
      | MyCoupons.com | 																	    |	new project page		| Invalid Project Information! |
  
  Scenario Outline: Editing an existing project
  	Given I have an existing project
  	And I am on an existing project page
  	And I click a link to an existing project edit page
		And I fill in "Title" with "<title>"
		And I fill in "Description" with "<description>"
		When I submit the form
		Then I should be redirect to the <path>
		And I should a see "<message>" message
		
		Scenarios:
      | title 				| description														|	path	| message											 |
      | MyCoupons.com | A web app to organize online coupons. |	existing project page	| Project Updated!						 |
      |    						| A web app to organize online coupons. |	edit project page			| Invalid Project Information! |
      | MyCoupons.com | 																	    |	edit project page			| Invalid Project Information! |
      
  Scenario: Deleting an existing project
  	Given I have an existing project
  	And I am on an existing project page
  	When I click a link to delete this project
  	Then I should be redirect to the projects list page
  	And I should a see "Project Deleted!" message
