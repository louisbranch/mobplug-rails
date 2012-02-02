Given /^I have a category$/ do
  @category = FactoryGirl.create(:category)
end

Given /^I have multiple categories$/ do
  FactoryGirl.create(:category, :title => 'WebApp')
  FactoryGirl.create(:category, :title => 'Mobile App')
end

When /^I create a new category$/ do
  visit categories_path
  click_on 'New Category'
  fill_in 'Title', :with => 'WebApp'
  click_on 'Create Category'
end

When /^I edit this category information$/ do
  visit category_path(@category)
  click_on 'Edit'
  fill_in 'Title', :with => 'Mobile App'
  click_on 'Update Category'
end

When /^I delete this category$/ do
  visit category_path(@category)
  click_on 'Delete'
end

When /^I add these categories to this project$/ do
  visit edit_project_path(@project)
  check 'WebApp'
  check 'Mobile App'
  click_on 'Update Project'
end

Then /^I should see this new category listed$/ do
  page.should have_content 'A new category was created!'
  page.should have_content 'WebApp'
end

Then /^this category should have been updated$/ do
  page.should have_content 'Your category was updated!'
end

Then /^I should no longer see this category listed$/ do
  page.should have_content 'Your category was deleted!'
end

Then /^I should see these categories listed for this project$/ do
  page.should have_content 'WebApp'
  page.should have_content 'Mobile App'
end
