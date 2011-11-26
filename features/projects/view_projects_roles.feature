Feature: View Project's Roles
	In order to know about what was perfomed on a project
	As a potencial client
	I want to view which roles is in a given project
			
	Scenario: View project roles on the projects page
		Given I have the following projects and roles
			| project       | roles                    |
			| MyCoupons.com | Developer                |
			| MusicQuiz     | UX Designer, UI Designer |
		When I go to the projects page
		Then I should see:
			| MyCoupons.com | Developer   |             |
			| MusicQuiz     | UX Designer | UI Designer |
