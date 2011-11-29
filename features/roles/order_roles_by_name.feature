Feature: Order roles by name
	In order to visualize the roles more easily
	As a user
	I want to view the roles ordered by name
	
	Scenario: Order roles by name
		Given the following roles:
			| title           |
			| UX Desginer     |
			| Developer       |
			| UI Desginer     |
			| Product Manager |
		When I view all the roles
		Then the roles should be ordered as:
			| 1 | Developer       |
			| 2 | Product Manager |
			| 3 | UI Desginer     |
			| 4 | UX Desginer     |

