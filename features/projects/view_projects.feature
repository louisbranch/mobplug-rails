Feature: View Projects
	In order to know about previous projects
	As a potencial client
	I want to view all projects and their information
	
	Scenario: View the projects list
		Given the following projects:
			|	title					|
			|	MyCoupons.com	|
			|	FallingBlocks	|
			|	PlanesDrop		|
		When I go to the projects page
		Then I should see:
			|	title					|
			|	MyCoupons.com	|
			|	FallingBlocks	|
			|	PlanesDrop		|
	
	Scenario: View a project information
		Given the following project:
			|	title					|	description		|
			|	MyCoupons.com	|	The best site	|
		And I am on the projects page
		When I click on "MyCoupons.com"
		Then I should be redirect to this project page
		And I should see "MyCoupons.com"
		And I should see "The best site"
