require 'capybara'

#generate register driver
Capybara.register_driver :chrome do |driver|
	Capybara::Selenium::Driver.new(driver, :browser => :chrome)
end

Capybara.configure do |config|
	config.ignore_hidden_elements = false
end

driver = Capybara::Session.new(:chrome)

driver.visit('http://bbc.co.uk')

driver.click_link('idcta-link')
# driver.click_link('idcta-username')

driver.fill_in('username-input', with: 'test@gmail.com')
