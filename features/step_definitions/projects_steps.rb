Given /^I (?:am on|go to) the projects page$/ do
  visit projects_path
end

Given /^I (?:am on|go to) the new project page$/ do
  visit new_project_path
end

Given /^I (?:am on|go to) (?:the|this) project page$/ do
  visit project_path(Project.first)
end

Given /^I have "([^"]*)" projects?$/ do |number|
  number = number.to_i
  number.times do
    Factory(:project)
  end
  Project.count.should == number
end

Given /^I should have "([^"]*)" projects?$/ do |number|
  number = number.to_i
  Project.count.should == number
end

Given /^the following project:$/ do |table|
  table.hashes.each do |hash|
    Factory.create(:project, hash)
  end
end

Given /^the following projects:$/ do |table|
  table.hashes.each do |hash|
    Factory.create(:project, hash)
  end
end

When /^I go to this project edit page$/ do
  visit edit_project_path(Project.first)
end

Then /^I should be redirect to the projects page$/ do
  assert current_path == projects_path, message = "I am in the wrong page"
end

Then /^I should be redirect to the new project page$/ do
  assert current_path == new_project_path
end

Then /^I should be redirect to (?:the|this) project page$/ do
  assert current_path == project_path(Project.first)
end

Then /^I should be redirect to the edit project page$/ do
  assert current_path == edit_project_path(Project.first)
end

Then /^I should see:$/ do |table|
  table.map_column!('title') do |title| 
    page.should have_content hash
  end
end

