require 'capybara/cucumber'

Given(/^I am testing the PopSugar site$/) do
  if(@browser!=true)
    selenium_init
    Capybara.app_host = @popsugar_host
  end
end

When(/^I navigate to the PopSugar homepage$/) do
  visit('')
end

Then(/^the PopSugar homepage loads$/) do
  find("img.main-logo")
  page.assert_text("Latest Videos")
  page.assert_text("Latest News")
end

Given(/^we are on the PopSugar homepage$/) do
  step "we are testing the PopSugar site"
  step "I navigate to the PopSugar homepage"
  step "the PopSugar homepage loads"
end

When(/^I click on the Fashion Navigation Button$/) do
  find("#js-nav-channel .ga-track.omniture-track.fashion").click
end

Then(/^I see the Latest Fashion text$/) do
  page.assert_text("Latest Fashion")
end

When(/^I click on the Fitness Navigation Button$/) do
  find("#js-nav-channel .ga-track.omniture-track.fitness").click
end

Then(/^I see the Latest Fitness text$/) do
  page.assert_text("Latest Fitness")
end

When(/^I click on the Beauty Navigation Button$/) do
  find("#js-nav-channel .ga-track.omniture-track.beauty").click
end

Then(/^I see the Latest Beauty text$/) do
  page.assert_text("Latest Beauty")
end

Then(/^I should see the four hero carousels$/) do
  hero_carousel = 1
  while hero_carousel <= 4
    expect(page).to have_css("#feature-section .clearfix a:nth-child(#{hero_carousel})")
    hero_carousel += 1
  end
end

Then(/^I should see the large hero picture, title, and author$/) do
  hero_large = [
      "#feature-section .featured-post .featured-story .top-story-info  .top-story-channel",
      "#feature-section .featured-post .featured-story .top-story-info .top-story-title",
      "#feature-section .featured-post .featured-story .top-story-info .top-story-author-name"
  ]
  i = 0
  while i <= 2
    expect(page).to have_css(hero_large[i])
    i += 1
  end
end

Then(/^I should see the article after the infinite scroll has refreshed$/) do
  infinite_scroll_article = [
      "#content article:nth-child(15) .post-content.clearfix .header .post-subhead",
      "#content article:nth-child(15) .post-content.clearfix .header .post-subhead time",
      "#content article:nth-child(15) .post-content.clearfix .header .post-title a",
      "#content article:nth-child(15) .post-content.clearfix .post-image.no-hover-share",
      "#content article:nth-child(15) .post-content.clearfix .post-meta .front_image_source"
  ]
  i = 0
  while i <= 4
    expect(page).to have_css(infinite_scroll_article[i])
    i += 1
  end
end

Then(/^I check to see if Beauty Finder is in the dropdown$/) do
  path = "http://www.popsugar.com/beauty/Beauty-Trend-Finder-41897941"
  expect(page).to have_link(nil, href: path)
end

