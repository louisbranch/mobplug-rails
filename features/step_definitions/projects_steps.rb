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

Given /^I have the following projects? and categories$/ do |table|
  table.hashes.each do |hash|
    project = Factory.create(:project, :title => hash['project'])
    hash['categories'].split(",").each do |title|
      project.categories << Factory.create(:category, :title => title)
    end
  end
end

Given /^I have the following projects and roles$/ do |table|
  table.hashes.each do |hash|
    project = Factory.create(:project, :title => hash['project'])
    hash['roles'].split(",").each do |title|
      project.roles << Factory.create(:role, :title => title)
    end
  end
end

Given /^I fill the project form with valid information$/ do
  steps %{
    Given I fill in "Title" with "MyCoupons.com"
    Given I fill in "Resume" with "Enjoy your online coupons"
  }
end

Then /^the project should have "([^"]*)" (?:category|categories)$/ do |number|
  Project.first.categories.count.should == number.to_i
end

Then /^the project should have "([^"]*)" roles?$/ do |number|
  Project.first.roles.count.should == number.to_i
end
