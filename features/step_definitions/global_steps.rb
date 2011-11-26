Given /^I click on "([^"]*)"$/ do |link|
  click_on link
end

Given /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, content|
  fill_in field, :with => content
end

Given /^I fill the following:$/ do |table|
  table.rows_hash.each do |key, value|
    fill_in key, :with => value
  end
end

Given /^I check:$/ do |table|
  table.raw.flatten.map do |item|
    check item
  end
end

Given /^I uncheck "([^"]*)"$/ do |item|
  uncheck item
end

Given /^show me the page$/ do
  save_and_open_page
end

Then /^I should see "([^"]*)"$/ do |message|
  page.should have_content message
end

Then /^I should not see "([^"]*)"$/ do |message|
  page.should have_no_content message
end

Then /^I should see:$/ do |table|
  table.raw.flatten.map do |item|
    page.should have_content item
  end
end
