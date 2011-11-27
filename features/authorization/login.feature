Feature: Login as Admin
	In order to manage the site
	As a site admin
	I want to login and receive admin privileges
	
	Scenario: Successful login
		Given I go to the login page
		And I fill in "Password" with "foobar"
		When I click on "Login"
		Then I should be redirected to the home page
		And I should see "Welcome Back!"
	
	Scenario: Wrong Password
		Given I go to the login page
		And I fill in "Password" with "barfoo"
		When I click on "Login"
		Then I should be redirected to the login page
		And I should see "Invalid Password!"
