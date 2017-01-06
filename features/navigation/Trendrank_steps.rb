#!/bin/env ruby
# encoding: utf-8
require 'capybara/cucumber'

Then(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1,arg2|
  within_frame(find(".fb-proxy")) do
    fill_in arg1, :with => arg2
  end
end

Then(/^I click on login iframe element "([^"]*)", which is the "([^"]*)"$/) do |arg1,arg2|
  within_frame(find(".fb-proxy")) do
    find(arg1).click
  end
end


#$I->seeElement( "#user_login #edit-name" );
#$I->fillField( "#edit-name", "hchen308" );
#$I->fillField( "#edit-pass", "test123" );
#$I->click( ".button_copy .fancybutton" );
