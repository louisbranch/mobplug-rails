Given /^I am not logged in$/ do
end

Given /^I am logged in$/ do
  steps %{When I log in}
end

When /^I log in$/ do
  visit login_path
  fill_in 'Password', :with => 'foobar'
  click_on 'Login'
end

When /^I log out$/ do
  visit logout_path
end

Then /^I should be logged as an admin$/ do
  page.should have_content 'Welcome Back!'
end

Then /^I should no longer be an admin$/ do
  page.should have_content 'See you later!'
end
