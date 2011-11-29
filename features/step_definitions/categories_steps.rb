Given /^I have "([^"]*)" category$/ do |number|
  number = number.to_i
  number.times do
    Factory(:category)
  end
  Category.count.should == number
end

Given /^I should have "([^"]*)" (?:category|categories)$/ do |number|
  number = number.to_i
  Category.count.should == number
end

Given /^the following (?:category|categories):$/ do |table|
  table.hashes.each do |hash|
    Factory.create(:category, hash)
  end
end

Given /^a category "([^"]*)" exists$/ do |title|
  @category = Factory.create(:category, :title => title)
end

Given /^this category has the following projects:$/ do |table|
  table.hashes.each do |hash|
    @category.projects << Factory.create(:project, hash)
  end
end

When /^I view all the categories$/ do
  @categories = Category.all
end

Then /^the categories should be ordered as:$/ do |table|
  table.rows_hash.each do |index, title|
    @categories[index.to_i - 1].title.should == title
  end
end

