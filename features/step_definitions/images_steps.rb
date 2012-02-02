Given /^a project has an image$/ do
  @project.assets << FactoryGirl.create(:asset)
end

When /^I add images to a project$/ do
  visit edit_project_path(@project)
  attach_file "project_assets_attributes_0_image", File.join(::Rails.root.to_s, 'features', 'test_images', 'screenshot1.png')
  attach_file "project_assets_attributes_1_image", File.join(::Rails.root.to_s, 'features', 'test_images', 'screenshot2.png')
  click_on 'Update Project'
end

When /^I delete this image$/ do
  visit edit_project_path(@project)
  check 'Delete Image'
  click_on 'Update Project'
end

Then /^I should see these images on this project$/ do
  page.should have_css("img[alt=Screenshot1]")
  page.should have_css("img[alt=Screenshot2]")
end

Then /^I should no longer see this image on this project$/ do
  page.should_not have_css("img[alt=Screenshot1]")
end
