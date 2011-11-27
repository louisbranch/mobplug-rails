Feature: Manage Projects
	In order to show our previous projects to future clients
	As a site admin
	I want to create and manage projects
	
	Background:
		Given I am logged in
	
	Scenario: Create a new project
		Given I am on the projects page
		And I click on "New Project"
 		And I fill the following: 
	 	| Title       | MyCoupons.com                           |
	 	| Resume      | A web app to organize online coupons.   |
	 	| Description | Don't lose track of your online coupons |
	 	| URL         | http://luizbranco.com                   |
		When I click on "Create Project"
		Then I should have "1" project
		And I should be redirected to this project page
		And I should see "Project Created!"
		
	Scenario Outline: Create a new project with required blank fields
		Given I am on the projects page
		And I click on "New Project"
		And I fill in "Title" with "<title>"
		And I fill in "Resume" with "<resume>"
		When I click on "Create Project"
		Then I should have "0" projects
		And I should be redirected to the new project page
		And I should see "<message>"
		
		Examples:
      | title         | resume                                |	message                 |
      |               | A web app to organize online coupons. | Title can't be blank    |
      | MyCoupons.com |                                       | Resume can't be blank   |

  Scenario Outline: Editing an existing project
  	Given I have "1" project
  	And I am on this project page
  	And I click on "Edit"
		And I fill in "Title" with "<title>"
		And I fill in "Resume" with "<resume>"
		When I click on "Update Project"
		Then I should be redirected to the <path>
		And I should see "<message>"
		
		Examples: with valid fields
      | title         | resume                                | path          | message          |
      | MyCoupons.com | A web app to organize online coupons. | project page	|	Project Updated! |
    
		Examples: with invalid fields
      | title 				| resume    														| path							| message               |
      |               | A web app to organize online coupons. | edit project page	|	Title can't be blank  |
      | MyCoupons.com |                                       | edit project page	|	Resume can't be blank |
      
  Scenario: Deleting an existing project
  	Given I have "1" project
  	And I am on this project page
  	When I click on "Delete"
  	Then I should have "0" projects
  	And I should be redirected to the projects page
  	And I should see "Project Deleted!"
