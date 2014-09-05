############# Actions

Given(/^I am on the Home Page$/) do
  visit_page(HomePage).verify_page
end

When /^I login with valid credentials$/ do
  on_page(HomePage).login
end

Then /^I became loginned$/ do
  on_page(HomePage).verify_loginned
end