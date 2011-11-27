Feature: View Project's Categories
	In order to know about the project platform and purpose
	As a user
	I want to view which categories a given project has
	
	Scenario: View project categories on its page
		Given I have the following projects and categories
			| project       | categories        |
			| MyCoupons.com | Web, Mobile       |
		When I go to this project page
		Then I should see:
			| Web | Mobile |
			
	Scenario: View project categories on the projects page
		Given I have the following projects and categories
			| project       | categories        |
			| MyCoupons.com | Web, Mobile       |
			| MusicQuiz     | Facebook, Android |
		When I go to the projects page
		Then I should see:
			| MyCoupons.com | Web      | Mobile  |
			| MusicQuiz     | Facebook | Android |
