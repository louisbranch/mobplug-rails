Feature: Manage Roles
	In order to arrange our previous projects into roles performed
	As a site admin
	I want to create and manage roles
	
	Background:
		Given I am logged in
		
	Scenario: Create a new role
		Given I am on the roles page
		And I click on "New Role"
		And I fill in "Title" with "Developer"
		When I click on "Create Role"
		Then I should have "1" role
		And I should be redirected to the roles page
		And I should see "Role Created!"
	
	Scenario: Create a new role with required blank fields
		Given I am on the roles page
		And I click on "New Role"
		And I fill in "Title" with ""
		When I click on "Create Role"
		Then I should have "0" roles
		And I should be redirected to the new role page
		And I should see "Title can't be blank"
		
	Scenario Outline: Editing an existing role
  	Given I have "1" role
  	And I am on the roles page
  	And I click on "Edit"
		And I fill in "Title" with "<title>"
		When I click on "Update Role"
		Then I should be redirected to the <path>
		And I should see "<message>"
		
		Examples: with valid fields
      | title 	  | path			 | message       |
      | Developer | roles page | Role Updated! |
    
		Examples: with invalid fields
      | title | path            | message              |
      |    		| edit role page  |	Title can't be blank |
      
  Scenario: Deleting an existing role
  	Given I have "1" role
  	And I am on the roles page
  	When I click on "Delete"
  	Then I should have "0" roles
  	And I should be redirected to the roles page
  	And I should see "Role Deleted!"
