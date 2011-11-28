Feature: View Projects Images
	In order to view how the project looks
	As a user
	I want to view the project images
	
	Scenario: View images small size on the project page
		Given I have the following project and images:
			| project   | images                           |
			| MyCoupons | screenshot1.png, screenshot2.png |
	 	When I go to this project page
		Then I should see the images:
			| Screenshot1 |
			| Screenshot2 |
	
	Scenario: View images thumbs size on the projects page
		Given I have the following project and images:
			| project       | images          |
			| MyCoupons     | screenshot1.png |
			| FallingBlocks | screenshot2.png |
	 	When I go to the projects page
		Then I should see the images:
			| Screenshot1 |
			| Screenshot2 |
	
	Scenario: View images thumbs size on the home page
		Given I have the following project and images:
			| project       | images          |
			| MyCoupons     | screenshot1.png |
			| FallingBlocks | screenshot2.png |
	 	When I go to the home page
		Then I should see the images:
			| Screenshot1 |
			| Screenshot2 |
	
	Scenario: View images fullsize on the project page without javascript
		Given I have the following project and images:
			| project   | images                           |
			| MyCoupons | screenshot1.png, screenshot2.png |
		And I go to this project page
		When I click on "Screenshot1"
		Then I should be see the fullsize "screenshot1.png" image on the browser
