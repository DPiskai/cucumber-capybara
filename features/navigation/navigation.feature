@popsugar-channel-navigation @popsugar @javascript
Feature: PopSugar Channel Navigation Tests

  @beauty @BVTChannelBeautyCept.php
  Scenario: Popsugar Beauty Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/beauty?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @career @VTChannelCareerCept.php
  Scenario: Popsugar Career Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/career?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @celebrity @BVTChannelCelebrityCept.php
  Scenario: Popsugar Celebrity Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/celebrity?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @fashion @BVTChannelFashionCept.php
  Scenario: Popsugar Fashion Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/fashion?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @fitness @BVTChannelFitnessCept.php
  Scenario: Popsugar Fitness Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/fitness?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @food @BVTChannelFoodCept.php
  Scenario: Popsugar Food Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/food?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @latina @BVTChannelLatinaCept.php
  Scenario: Popsugar Latina Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/latina?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @living @BVTChannelLivingCept.php
  Scenario: Popsugar Living Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/living?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @love @BVTChannelLoveCept.php
  Scenario: Popsugar Love Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/love?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @moms @BVTChannelMomsCept.php
    Scenario: Popsugar Moms Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/moms?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @news @BVTChannelNewsCept.php
  Scenario: Popsugar News Channel Loads
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/news?no_ads=t0ps3cr3t4dfr33"
    Then I should see the four hero carousels
    And I should see the large hero picture, title, and author
    And I should see element "#content", which is the "River article section"
    And I scroll to the bottom of the page
    And I should see the article after the infinite scroll has refreshed

  @beauty @BVTNavBeautyCatchAllCept.php
  Scenario: Popsugar Beauty Navigation Contains Correct URLs
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/beauty?no_ads=t0ps3cr3t4dfr33"
    Then I hover over element "#js-nav-channel li:nth-child(4) a" which is the "Beauty Navigation"
    And I check to see if Beauty Finder is in the dropdown

  @celebrity @BVTCelebritiesCept.php
  Scenario: Check a celebrity page
    Given I am testing the PopSugar site
    When I navigate to PopSugar page "/celebrities?no_ads=t0ps3cr3t4dfr33"
    Then I should see exact text "Latest Celebrities"
    And I should see exact text "Queen Latifah"
