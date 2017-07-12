Given(/^I visit login page$/) do
  visit login_path
end

When(/^I enter my "([^"]*)"$/) do |name|
  fill_in 'name', with: name
end

When(/^click on "([^"]*)"$/) do |link|
  click_on link
end

Then(/^I should see "([^"]*)"$/) do |greeting|
  expect(page).to have_content greeting
end

Then(/^see a link to logout$/) do
  expect(page).to have_css("input[value='logout']")
end

When(/^I click "([^"]*)"$/) do |button|
  click_on button
end

Then(/^I should be on the "([^"]*)" page$/) do |arg1|
  expect(current_path).to eq(login_path)
end


When(/^I visit the home page$/) do
  visit root_path
end
