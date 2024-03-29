Given /^I have a project$/ do
  @project = FactoryGirl.create(:project)
end

Given /^I have multiple projects$/ do
  1.upto(5) do |n|
    FactoryGirl.create(:project, :name => "Project #{n}", :launch => "201#{n}-01-01")
  end
end

Given /^this project has a category$/ do
  @category = FactoryGirl.create(:category)
  @project.categories << @category
end

When /^I create a new project$/ do
  visit projects_path
  click_on 'New Project'
  fill_in 'Name', :with => 'MyCoupoms.com'
  fill_in 'Description', :with => 'A simple way to track your online coupoms.'
  fill_in 'Url', :with => 'http://www.meuscupons.com'
  select '2012', :from => 'project_launch_1i'
  select 'June', :from => 'project_launch_2i'
  click_on 'Create Project'
end

When /^I edit this project information$/ do
  visit project_path(@project)
  click_on 'Edit'
  fill_in 'Name', :with => 'ForgetfulChef'
  click_on 'Update Project'
end

When /^I delete this project$/ do
  visit project_path(@project)
  click_on 'Delete'
end

When /^I go to this category page$/ do
  visit projects_path
  click_on @category.name
end

When /^I go to the home page$/ do
  visit root_path
end

Then /^I should see a project listed$/ do
  page.should have_content 'A new project was created!'
  page.should have_content 'MyCoupoms.com'
  page.should have_content 'A simple way to track your online coupoms.'
  page.should have_content 'Visit Project'
  page.should have_content 'Jun / 2012'
end

Then /^this project should have been updated$/ do
  page.should have_content 'Your project was updated!'
end

Then /^I should no longer see this project listed$/ do
  page.should have_content 'Your project was deleted!'
end

When /^I go to the projects list$/ do
  visit projects_path
end

Then /^I should see this project listed$/ do
  page.should have_content @project.name
end

Then /^I should only see the most recent ones$/ do
  5.downto(2) do |n|
    page.should have_content "Project #{n}"
  end
  page.should_not have_content "Project 1"
end
