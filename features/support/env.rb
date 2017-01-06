require 'capybara/cucumber'
require 'selenium-webdriver'

def selenium_init

  browser = ENV["BROWSER"]

  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
    :browser => :remote,
    :url => "http://sugarqajenkinsmaster11.sugarops.com:4444/wd/hub",
    :desired_capabilities => caps)
  end

  @driver = browser  # for selenium logic

  # This forces a new session. Capybara creates a new session each time any of the following things *change*: session name, driver, Capybara.app
  unique_timestamp = Time.now.to_i.to_s
  Capybara.session_name = "SS_session_#{unique_timestamp}"

  Capybara.default_driver = :selenium
  #Capybara.current_driver = Capybara.javascript_driver

  @browser = true

  Capybara.wait_on_first_by_default = true #trigger Capybara's waiting behavior for a minimum of 1 matching element to be found and return the first

  if ENV["CI"] then Capybara.default_max_wait_time = 30 else Capybara.default_max_wait_time = 4 end

  Capybara.run_server = false

  Capybara.app_host = "http://www.google.co.uk"
end
