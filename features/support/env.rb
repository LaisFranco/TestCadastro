require "rspec"
require "yaml"
require "pry"
require "capybara/cucumber"
require "site_prism"
#require 'page-object'
require "capybara"
require "report_builder"
require "faker"
require "cpf_faker"


case ENV["BROWSER"]
when "firefox"
 @driver = :selenium
when "chrome"
 @driver = :selenium_chrome
when "headless"
 @driver = :selenium_chrome_headless
else
 puts "Invalid Browser"
end

Before do
   @AcessarSite= AcessarSitePageObject.new
    page.current_window.resize_to(1440, 900)
end

Capybara.configure do |config|
    config.default_max_wait_time = 10
    config.default_driver = @driver
    
end