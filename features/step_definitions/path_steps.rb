################################# Global #################################

Given /^I go to the home page$/ do
  visit root_path
end

Then /^the URI should be "([^"]*)"$/ do |uri|
  assert current_path == uri
end

Then /^I should be redirected to the home page$/ do
  assert current_path == root_path
end

############################# Authorization ##############################

Given /^I go to the login page$/ do
  visit login_path
end

When /^I go to the logout page$/ do
  visit logout_path
end

Then /^I should be redirected to the login page$/ do
  assert current_path == login_path
end

############################# Projects ###################################

Given /^I (?:am on|go to) the projects page$/ do
  visit projects_path
end

Given /^I (?:am on|go to) the new project page$/ do
  visit new_project_path
end

Given /^I (?:am on|go to) (?:the|this) project page$/ do
  visit project_path(Project.first)
end

When /^I go to this project edit page$/ do
  visit edit_project_path(Project.first)
end

Then /^I should be redirected to (?:the|this) projects page$/ do
  assert current_path == projects_path
end

Then /^I should be redirected to the new project page$/ do
  assert current_path == new_project_path
end

Then /^I should be redirected to (?:the|this) project page$/ do
  assert current_path == project_path(Project.first)
end

Then /^I should be redirected to the edit project page$/ do
  assert current_path == edit_project_path(Project.first)
end

############################## Categories #################################

Given /^I (?:am on|go to) the categories page$/ do
  visit categories_path
end

Given /^I (?:am on|go to) the new category page$/ do
  visit new_category_path
end

When /^I (?:am on|go to) (?:the|this) category page$/ do
  visit category_path(Category.first)
end

When /^I go to this category edit page$/ do
  visit edit_category_path(Category.first)
end

Then /^I should be redirected to the categories page$/ do
  assert current_path == categories_path
end

Then /^I should be redirected to the new category page$/ do
  assert current_path == new_category_path
end

Then /^I should be redirected to (?:the|this) category page$/ do
  assert current_path == category_path(Category.first)
end

Then /^I should be redirected to the edit category page$/ do
  assert current_path == edit_category_path(Category.first)
end

################################# Roles ###################################

Given /^I (?:am on|go to) the roles page$/ do
  visit roles_path
end

Given /^I (?:am on|go to) the new role page$/ do
  visit new_role_path
end

When /^I go to this role edit page$/ do
  visit edit_role_path(Role.first)
end

Then /^I should be redirected to the roles page$/ do
  assert current_path == roles_path
end

Then /^I should be redirected to the new role page$/ do
  assert current_path == new_role_path
end

Then /^I should be redirected to the edit role page$/ do
  assert current_path == edit_role_path(Role.first)
end

################################# About ####################################

Given /^I go to the about page$/ do
  visit "/about"
end

################################ Contact ###################################

Given /^I go to the contact page$/ do
  visit contact_path
end
