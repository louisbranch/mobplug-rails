Given /^I have "([^"]*)" role$/ do |number|
  number = number.to_i
  number.times do
    Factory(:role)
  end
  Role.count.should == number
end

Given /^I should have "([^"]*)" (?:role|roles)$/ do |number|
  number = number.to_i
  Role.count.should == number
end

Given /^the following (?:role|roles)?:$/ do |table|
  table.hashes.each do |hash|
    Factory.create(:role, hash)
  end
end

Given /^a role "([^"]*)" exists$/ do |title|
  @role = Factory.create(:role, :title => title)
end

When /^I view all the roles$/ do
  @roles = Role.all
end

Then /^the roles should be ordered as:$/ do |table|
  table.rows_hash.each do |index, title|
    @roles[index.to_i - 1].title.should == title
  end
end



