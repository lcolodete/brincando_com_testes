require 'rubygems'
require 'capybara'
require 'capybara/dsl'

Capybara.javascript_driver = :envjs
Capybara.current_driver = :selenium
Capybara.default_wait_time = 5

Given /^I am at "([^"]*)"$/ do |url|
	Capybara.app_host = url
	Capybara.visit "/"
end

When /^I fill in the "([^"]*)" field with the string "([^"]*)"$/ do |field_name, search_string|
	Capybara.fill_in field_name, :with => search_string
end

When /^I click the "([^"]*)" button$/ do |btn_name|
	Capybara.click_button btn_name
end

Then /^I should see "([^"]*)"$/ do |url|
	Capybara.page.should have_content(url)
end

