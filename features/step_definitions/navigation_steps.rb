Then /^I should see the tab "([^"]*)" as active in the navigation bar$/ do |tab|
  within("nav#main") do
    page.should have_css("#tab_active", :text => tab)
  end
end

