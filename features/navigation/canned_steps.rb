#!/bin/env ruby
# encoding: utf-8

=begin
This is a dictionary of steps started by Henry Chen
=end

require 'capybara/cucumber'

#Navigation Steps
Given(/^I am testing website name "([^"]*)"$/) do |arg1|
  if(@browser!=true)
    selenium_init
    Capybara.app_host = @any_host
  end
  #Capybara.register_driver :selenium do |app|
  # browser = (ENV['browser'] || 'firefox').to_sym
  # Capybara::Selenium::Driver.new(app, :browser => browser)
  #end
end

When(/^I navigate to PopSugar page "([^"]*)"$/) do |arg1|
  visit(arg1)
end

Then(/^I navigate to webpage "([^"]*)"$/) do |arg1|
  visit(arg1)
end

Then(/^I refresh the page$/) do
  page.driver.browser.navigate.refresh
end

#Click Steps
Then(/^I click on element "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  find(arg1).click
end

Then(/^I click on element having id "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css("#"+arg1)
  find("#"+arg1).click
end

Then(/^I click on element having class "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css("."+arg1)
  find("."+arg1).click
end

Then(/^I click on element having xpath "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_xpath(arg1)
  find(:xpath, "#{arg1}").click
end

Then(/^I click on element having css "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  find(arg1).click
end

#Hover Steps
Then(/^I hover over element "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  find(arg1).hover
end

Then(/^I hover over element having id "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css("#"+arg1)
  find("#"+arg1).hover
end

Then(/^I hover over element having class "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css("."+arg1)
  find("."+arg1).hover
end

Then(/^I hover over element having xpath "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_xpath(arg1)
  find(:xpath, "#{arg1}").hover
end

Then(/^I hover over element having css "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  find(arg1).hover
end

#Wait Steps
Then(/^I wait for (\d+) seconds$/) do |seconds|
  sleep seconds.to_i
end

Then(/I wait for element "([^"]*)" which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
end

Then(/I wait for element "([^"]*)"$/) do |arg1|
  expect(page).to have_css(arg1)
end

Then(/I wait for element "([^"]*)" not visible, which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_no_css(arg1)
end

Then(/I wait for element "([^"]*)" not visible$/) do |arg1|
  expect(page).to have_no_css(arg1)
end


#Fill field
Then(/^I fill field element "([^"]*)" with "([^"]*)" and press the enter key$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  element = find(:css, arg1)
  (fill_in element[:name], :with => arg2)
  find(arg1).native.send_keys(:return)
end

Then(/^I fill field element "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
  element = find(:css, arg1)
  (fill_in element[:name], :with => arg2)
end

Then(/^I fill xpath field "([^"]*)" with "([^"]*)" and press the enter key$/) do |arg1, arg2|
  expect(page).to have_xpath(arg1)
  element = find(:xpath, "#{arg1}")
  (fill_in element[:name], :with => arg2)
  find(:xpath, "#{arg1}").native.send_keys(:return)
end

Then(/^I fill xpath field "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_xpath(arg1)
  element = find(:xpath, "#{arg1}")
  (fill_in element[:name], :with => arg2)
  find(:xpath, "#{arg1}").native.send_keys(:return)
end


#Window Switching
Then(/^I switch to new popup window$/) do
  main = page.driver.browser.window_handles.first
  popup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(popup)
end

#Webpage Scrolling
Then(/^I scroll to the bottom of the page$/) do
  page.execute_script "window.scrollBy(0,10000)"
end

#Assertions
Then(/I should see exact text "([^"]*)"$/) do |arg1|
  page.assert_text(arg1)
end

Then(/I should not see text "([^"]*)"$/) do |arg1|
  expect(page).to have_no_content(arg1)
end

Then(/I should see partial text "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Then(/I should see text "([^"]*)" at locator "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg2)
  find(arg2, text: arg1, exact: true)
end

Then(/I should not see text "([^"]*)" at locator "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg2)
  expect(page).to have_no_css(arg2, :text => arg1)
end

Then(/I should see element "([^"]*)", which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_css(arg1)
end

Then(/I should not see element "([^"]*)", which is the "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_no_css(arg1)
end

#Then(/I should see link "([^"]*)", at locator "([^"]*)"$/) do |arg1, arg2|
  #expect(page).to have_link(arg2, arg1)
#end

Then(/I should see URL equal to "([^"]*)"$/) do |arg1|
  current_url.should == arg1
end

Then(/I should not see URL equal to "([^"]*)"$/) do |arg1|
  current_url.should_not == arg1
end

Then(/I should see URL containing text "([^"]*)"$/) do |arg1|
  expect(current_url).to have_text(arg1)
end

Then(/I should not see URL containing text "([^"]*)"$/) do |arg1|
  current_url.should_not have_text(arg1)
end

