Given /^I attach the (\d+).* image field with "([^"]*)"$/ do |number, image|
  number = number.to_i - 1  
  field = "project_assets_attributes_#{number}_image"
  file = File.join(::Rails.root.to_s, 'features', 'test_images', image)
  attach_file field, file
end

Given /^I check "([^"]*)" for the (\d+).* image$/ do |text, number|
  number = number.to_i - 1
  check "project_assets_attributes_#{number}__destroy"
end

Then /^I should see the images?:$/ do |table|
  table.raw.flatten.map do |image_alt|
    page.should have_css("img[alt=#{image_alt}]")
  end
end

Then /^I should not see the images?:$/ do |table|
  table.raw.flatten.map do |image_alt|
    page.should have_no_css("img[alt=#{image_alt}]")
  end
end

Then /^I should be see the fullsize "([^"]*)" image on the browser$/ do |image|
  current_path.should == "/system/images/1/original/#{image}"
end
