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
		When I go to the projects list page
		Then I should see:
			|	title					|
			|	MyCoupons.com	|
			|	FallingBlocks	|
			|	PlanesDrop		|
	
	Scenario: View a project information
		Given the following project:
			|	title					|	description		|
			|	MyCoupons.com	|	The best site	|
		When I go to this project page
		Then I should a see "MyCoupons.com"
		And I should a see "The best site"
