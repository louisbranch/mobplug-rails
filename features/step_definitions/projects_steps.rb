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

Given /^the following projects?:$/ do |table|
  table.hashes.each do |hash|
    Factory.create(:project, hash)
  end
end

Then /^I should see:$/ do |table|
  table.map_column!('title') do |title| 
    page.should have_content hash
  end
end

