require 'watir-webdriver'



Before do
  profile = Selenium::WebDriver::Firefox::Profile.new
  @browser = Watir::Browser.new :firefox, profile: profile
end


After do
  @browser.close
end
