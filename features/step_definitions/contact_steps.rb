When /^I send a new message to the site$/ do
  visit contact_path
  fill_in 'Name', :with => 'Luiz Branco'
  fill_in 'Email', :with => 'artfikan@gmail.com'
  fill_in 'Subject', :with => 'Site feedback'
  fill_in 'Message', :with => 'The site could have a ...'
  click_on 'Send'
end

Then /^this message should be received by the admins$/ do
  page.should have_content "Your message has been sent!"
end
