Feature: Send a contact email to the site
 In order to contact the site team
 As a potencial client
 I want to send email through the site
 
 Background:
  Given I go to the contact page
 
 Scenario: Send a email through the site
 	Given I fill the following: 
	 	| Name    | Luiz Branco                     |
	 	| Email   | artfikan@gmail.com              |
	 	| Subject | Rails project                   |
	 	| Message | I have a company that needs ... |
 	When I click on "Send Email"
 	Then I should be redirected to the home page
 	And I should see "Email has been sent!"
 	
 	Scenario Outline: Send a email through the site with required blank fields
		Given I fill in "Name" with "<name>"
		And I fill in "Email" with "<email>"
		And I fill in "Subject" with "<subject>"
		And I fill in "Message" with "<message>"
		When I click on "Send Email"
		Then I should see "<alert>"
		
		Examples:
      | name        | email               | subject       | message                         | alert                  |
      |             | artfifkan@gmail.com | First Contact | I have a company that needs ... | Name can't be blank    |
      | Luiz Branco |                     | First Contact | I have a company that needs ... | Email can't be blank   |
      | Luiz Branco | artfifkan@gmail.com |               | I have a company that needs ... | Subject can't be blank |
      | Luiz Branco | artfifkan@gmail.com | First Contact |                                 | Message can't be blank |
  
	Scenario Outline: Send a email through the site with a invalid email format
	 	Given I fill the following: 
		 	| Name    | Luiz Branco                     |
		 	| Subject | Rails project                   |
		 	| Message | I have a company that needs ... |
	 	And I fill in "Email" with "<email>"
	 	When I click on "Send Email"
	 	Then I should see "Email is invalid"
	 	
	 	Examples:
	 		| email             |
	 		| artfikan          |
	 		| artfikan@gmail    |
	 		| artikan_gmail.com |
	 		| artikan gmail com |
	 		
	Scenario: Send a email through the site with a long message field
	 	Given I fill the following: 
		 	| Name    | Luiz Branco                     |
		 	| Email   | artfikan@gmail.com              |
		 	| Subject | Rails project                   |
	 	And I fill in "Message" with more than "500" caracters
	 	When I click on "Send Email"
	 	Then I should see "Message is too long (maximum is 500 characters)"
