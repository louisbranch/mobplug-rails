Feature: Show recents projects on the home page
	In order to show some examples of our work for the users
	As a site admin
	I want to show the most recent projects on the home page
	
	Scenario: View the 3 most recent projects on the home page
		Given the following projects:
			| title           | created_at |
			| MyCoupons       | 2011-01-01 | 
			| FallingBlocks   | 2011-01-02 |
			| PlanesDrop      | 2011-01-03 |
			| MusicQuiz       | 2011-01-04 |
			| Instant Buttons | 2011-01-05 |
		When I go to the home page
		Then I should see:
			| PlanesDrop      |
			| MusicQuiz       |
			| Instant Buttons |
		But I should not see:
			| MyCoupons       |
			| FallingBlocks   |
