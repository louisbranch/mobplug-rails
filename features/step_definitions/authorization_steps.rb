Given /^I go to the login page$/ do
  visit login_path
end

Given /^I am not logged in$/ do
end

Given /^I am logged in$/ do
  steps %{
    Given I go to the login page
		And I fill in "Password" with "foobar"
		When I click on "Login"
		Then I should be redirect to the index page
		And I should see "Welcome Back!"
  }
end

When /^I go to the logout page$/ do
  visit logout_path
end

Then /^I should be redirect to the index page$/ do
  assert current_path == root_path
end

Then /^I should be redirect to the login page$/ do
  assert current_path == login_path
end
