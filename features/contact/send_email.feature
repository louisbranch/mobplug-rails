Feature: Send a contact email to the site
 In order to contact the site team
 As a potencial client
 I want to send email through the site
 
 Scenario: Send a email through the site
 	Given I go to the contact page
 	And I fill the following:
	 	| Name    | Luiz Branco                     |
	 	| Email   | artifikan@gmail.com             |
	 	| Subject | Rails project                   |
	 	| Message | I have a company that needs ... |
 	When I click on "Send Email"
 	Then I should see "Email has been sent!"
