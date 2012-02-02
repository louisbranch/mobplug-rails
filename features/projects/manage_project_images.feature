Feature: Manage Project Images
	In order to show how the project looks to potencial clients
	As a site admin
	I want to add and delete images into a project

	Background:
		Given I am logged in
		And I have a project

	Scenario: Adding images into a project
		When I add images to a project
		Then I should see these images on this project

	Scenario: Deleting a image from a project
	  Given a project has an image
	  When I delete this image
	  Then I should no longer see this image on this project
