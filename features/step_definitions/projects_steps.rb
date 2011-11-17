Given /^I (?:am on|go to) the projects list page$/ do
  visit projects_path
end

Given /^I (?:am on|go to) (?:the|this) project page$/ do
  visit project_path(Project.first)
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

Then /^I should have "([^"]*)" new projects?$/ do |count|
  Project.count.should == count.to_i
end

Then /^I should be redirect to the projects page$/ do
  assert current_path == projects_path
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

