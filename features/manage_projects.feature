Feature: Manage Projects
	In order to show our previous projects to future clients
	As a site administrator
	I want to create and manage projects

	Scenario: Create a new project
		Given I am on the projects list page
		And I click on "New Project"
		And I fill in "Title" with "MyCoupons.com"
		And I fill in "Description" with "A web app to organize online coupons."
		When I click on "Create Project"
		Then I should have "1" new project
		And I should be redirect to this project page
		And I should a see "Project Created!"
		
	Scenario Outline: Create a new project with required blank fields
		Given I am on the projects list page
		And I click on "New Project"
		And I fill in "Title" with "<title>"
		And I fill in "Description" with "<description>"
		When I click on "Create Project"
		Then I should have "0" new projects
		And I should be redirect to the new project page
		And I should a see "<message>"
		
		Examples:
      | title 				| description														|	message											 |
      |    						| A web app to organize online coupons. | Title can't be blank			 	 |
      | MyCoupons.com | 																	    | Description can't be blank	 |

  Scenario Outline: Editing an existing project
  	Given I have an existing "project"
  	And I am on this project page
  	And I click on "Edit"
		And I fill in "Title" with "<title>"
		And I fill in "Description" with "<description>"
		When I click on "Update Project"
		Then I should be redirect to the <path>
		And I should a see "<message>"
		
		Examples: with valid fields
      | title 				| description														| path					| message						|
      | MyCoupons.com | A web app to organize online coupons. | project page	|	Project Updated!	|
    
		Examples: with invalid fields
      | title 				| description														| path							| message											 |
      |    						| A web app to organize online coupons. | edit project page	|	Title can't be blank	 			 |
      | MyCoupons.com | 																	    | edit project page	|	Description can't be blank 	 |
      
  Scenario: Deleting an existing project
  	Given I have an existing "project"
  	And I am on this project page
  	When I click on "Delete"
  	Then I should be redirect to the projects page
  	And I should a see "Project Deleted!"
