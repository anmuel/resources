When(/^I create a new resource with the URI "(.*?)" and the name "(.*?)"$/) do |uri, name|
  @last_name = name
  @last_uri = uri
  visit new_resource_path
  fill_in 'Name', with: name
  fill_in 'Uri', with: uri
  click_button 'Save'
end

Then(/^I want to see it on the resources index page$/) do
  visit resources_path
  expect(page).to have_content @last_name
  expect(page).to have_content @last_uri
end