Given /^I click on "([^"]*)"$/ do |link|
  click_on link
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, content|
  fill_in field, :with => content
end

Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content message
end

Then /^I should not see "([^"]*)"$/ do |message|
  page.should have_no_content message
end
