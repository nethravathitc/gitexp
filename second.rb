def second
	require "selenium-webdriver"
	@driver= Selenium::WebDriver.for :firefox
	@driver.navigate.to "http://Google.com/"

	ele= @driver.find_element(:id , "lst-ib")
	ele.send_keys("selenium tutorials")
	wiat_for_spinner
	@driver.find_element(:name , "dbtnK" ).click
	#ele.submit
	d
end

def all
	second
end 
all
