Feature: Order categories by name
	In order to visualize the categories more easily
	As a user
	I want to view the categories ordered by name
	
	Scenario: Order categories by name
		Given the following categories:
			| title        |
			| Facebook App |
			| Android App  |
			| Web App      |
			| Mobile App   |
		When I view all the categories
		Then the categories should be ordered as:
			| 1 | Android App  |
			| 2 | Facebook App |
			| 3 | Mobile App   |
			| 4 | Web App      |

