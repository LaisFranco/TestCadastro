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


Capybara.configure do |config|
  #Capybara.javascript_driver = :poltergeist
  config.default_driver = :selenium_chrome
  #config.app_host =''
  config.default_max_wait_time = 5
end

#case ENV["BROWSER"] 
#when "firefox" 
#@driver = :selenium 
 #when "chrome" 
#@driver = :selenium_chrome 
#when "headless" 
#@driver = :selenium_chrome_headless 
#else 
 #puts "Invalid Browser" 
 #end