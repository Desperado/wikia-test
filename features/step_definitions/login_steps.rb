############# Actions

Given(/^I have opened the Home Page$/) do
  visit_page(HomePage).verify_page
end

Then /^I am redirected to the correct home page "(.*?)"$/ do |page_url|
  on_page(HomePage).verify_url(page_url)
end

When /^I login with valid credentials$/ do
  on_page(HomePage).account_navigation
  on_page(HomePage).login
end

Then /^I became logined$/ do
  on_page(HomePage).verify_loginned
end
