Given /^I have an existing "([^"]*)"$/ do |object|
  Factory(object)
end

Given /^I click on "([^"]*)"$/ do |link|
  click_on link
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, content|
  fill_in field, :with => content
end

Then /^I should a see "([^"]*)"$/ do |message|
  page.should have_content message
end
