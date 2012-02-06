Feature: Login as Admin
  In order to manage the site
  As a site admin
  I want to login and receive admin privileges

  Scenario: Successful login
    Given I am not logged in
    When I log in
    Then I should be logged as an admin

  Scenario: Successful logout
    Given I am logged in
    When I log out
    Then I should no longer be an admin
