Feature: View Projects
	In order to know about previous projects
	As a user
	I want to view all projects and their information
	
	Scenario: View the projects list
		Given the following projects:
			|	title					| resume                    |
			|	MyCoupons.com	|	Enjoy your online coupons |
			|	FallingBlocks	| Play this addictive game  |
		When I go to the projects page
		Then I should see:
			|	MyCoupons.com	|	Enjoy your online coupons |
			|	FallingBlocks	| Play this addictive game  |
	
	Scenario: View a project information
		Given the following project:
			|	title					| resume                           |	description		| url                   |
			|	MyCoupons.com	|	Don't lose track of your coupons | The best site	| http://luizbranco.com |
		And I am on the projects page
		When I click on "MyCoupons.com"
		Then I should be redirected to this project page
		And I should see:
			|	MyCoupons.com	|	Don't lose track of your coupons | The best site	| http://luizbranco.com |
