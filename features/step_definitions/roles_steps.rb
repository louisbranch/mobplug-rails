Given /^I have a role$/ do
  @role = FactoryGirl.create(:role)
end

Given /^I have multiple roles$/ do
  FactoryGirl.create(:role, :title => 'Developer')
  FactoryGirl.create(:role, :title => 'Designer')
end

When /^I create a new role$/ do
  visit roles_path
  click_on 'New Role'
  fill_in 'Title', :with => 'Developer'
  click_on 'Create Role'
end

When /^I update this role$/ do
  visit roles_path
  click_on 'Edit'
  fill_in 'Title', :with => 'Designer'
  click_on 'Update Role'
end

When /^I delete this role$/ do
  visit roles_path
  click_on 'Delete'
end

When /^I add these roles to this project$/ do
  visit edit_project_path(@project)
  check 'Developer'
  check 'Designer'
  click_on 'Update Project'
end

Then /^I should see a new role listed$/ do
  page.should have_content 'A new role was created!'
  page.should have_content 'Developer'
end

Then /^this role should have been updated$/ do
  page.should have_content 'Your role was updated!'
end

Then /^I should no longer see this role listed$/ do
  page.should have_content 'Your role was deleted!'
end

Then /^I should see these roles listes for this project$/ do
  page.should have_content 'Developer'
  page.should have_content 'Designer'
end
