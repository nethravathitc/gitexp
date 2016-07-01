def third
	require "selenium-webdriver"
	@driver= Selenium::WebDriver.for :firefox
	@driver.navigate.to "https://Google.com/"

	@driver.find_element(:link, "Gmail").click
	@driver.find_element(:id,"Email").send_keys("nethravathi.tc@styletag.com")
	@driver.find_element(:id,"next").click
	#wait_for_spinner
	@driver.find_element(:id,"Passwd").send_keys("p@ssw0rdTc")
	@driver.find_element(:id,"signIn").click
end

def exe
	third
end
exe