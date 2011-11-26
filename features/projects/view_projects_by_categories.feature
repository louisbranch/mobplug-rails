Feature: View projects by Categories
	In order to know more about projects of a specific type or platform
	As a potencial client 
	I want to view all projects that belong to a given category
	
	Scenario: View projects by Category
		Given a category "Web App" exists
		And this category has the following projects:
			|	title					|
			|	MyCoupons.com	|
			|	FallingBlocks	|
			|	PlanesDrop		|
		When I go to this category page
		Then I should see:
			|	MyCoupons.com	|
			|	FallingBlocks	|
			|	PlanesDrop		|
