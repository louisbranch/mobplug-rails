Feature: Contact the site
  In order to get in touch with the site admins
  As a potencial client
  I want to send a message to them

  Scenario: Send a email through the site
    When I send a new message to the site
 	  Then this message should be received by the admins
