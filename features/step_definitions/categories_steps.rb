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
