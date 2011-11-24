Feature: Manage Categories
	In order to divide our previous projects into categories
	As a site administrator
	I want to create and manage categories
	
	Background:
		Given I am logged in
		
	Scenario: Create a new category
		Given I am on the categories page
		And I click on "New Category"
		And I fill in "Title" with "Web App"
		When I click on "Create Category"
		Then I should have "1" category
		And I should be redirected to the categories page
		And I should see "Category Created!"
	
	Scenario: Create a new project with required blank fields
		Given I am on the categories page
		And I click on "New Category"
		And I fill in "Title" with ""
		When I click on "Create Category"
		Then I should have "0" categories
		And I should be redirected to the new category page
		And I should see "Title can't be blank"
		
	Scenario Outline: Editing an existing category
  	Given I have "1" category
  	And I am on the categories page
  	And I click on "Edit"
		And I fill in "Title" with "<title>"
		When I click on "Update Category"
		Then I should be redirected to the <path>
		And I should see "<message>"
		
		Examples: with valid fields
      | title 	| path					  | message						|
      | Web App | categories page	|	Category Updated!	|
    
		Examples: with invalid fields
      | title | path							  | message              |
      |    		| edit category page	|	Title can't be blank |
      
  Scenario: Deleting an existing category
  	Given I have "1" category
  	And I am on the categories page
  	When I click on "Delete"
  	Then I should have "0" categories
  	And I should be redirected to the categories page
  	And I should see "Category Deleted!"
