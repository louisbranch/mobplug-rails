Given /^I am on the projects list page$/ do
  visit projects_path
end

Given /^I click a link to the new project page$/ do
  click_on 'New Project'
end

Given /^I have an existing project$/ do
  @project = Factory(:project)
end

Given /^I am on an existing project page$/ do
  visit project_path(@project)
end

Given /^I click a link to an existing project edit page$/ do
  click_on 'Edit'
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, content|
  fill_in field, :with => content
end

When /^I submit the form$/ do
  click_on 'Save'
end

When /^I click a link to delete this project$/ do
  click_on 'Delete'
end

Then /^I should be redirect to the projects list page$/ do
  assert current_path == projects_path
end

Then /^I should be redirect to the new project page$/ do
  assert current_path == new_project_path
end

Then /^I should be redirect to the existing project page$/ do
  assert current_path == project_path(@project)
end

Then /^I should be redirect to the edit project page$/ do
  assert current_path == edit_project_path(@project)
end

Then /^I should a see "([^"]*)" message$/ do |message|
  page.should have_content message
end

