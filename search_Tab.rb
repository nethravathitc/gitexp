require './yousa_desktop/config/utils'
include Utils
require './yousa_desktop/config/config'
include Authentication
require "selenium-webdriver"

def searchBox
	search_value ="mugs"
	puts "search for #{search_value}"
	sleep(3)
		@driver.find_element(:css, "#aws_form_search > #appendedInputButtons").click
 		@driver.find_element(:css, "#aws_form_search > #appendedInputButtons").clear
  		@driver.find_element(:css, "#aws_form_search > #appendedInputButtons").send_keys("#{search_value}")
  		@driver.find_element(:css, "#aws_form_search > #submitButton").click
  		wait_for_spinner
  		puts title = @driver.find_element(:css, "#catalog-wrap > h1").text 
  		slider_value = @driver.find_element(:css,"#price-filter > span.price-total-count").text.gsub("Items", "").to_i
  		puts "slider_value is : #{slider_value}"
  		sleep(3)	
  		flag=0
  		for i in 1..slider_value
  			sleep(3)
  			product_name = @driver.find_element(:css,"#product-container > div > ul > li:nth-child(#{i}) > div > div.product-Info > span.product-description.text-left > a").text
        puts product_name
        product_name= product_name.downcase
        puts product_name
  			search_value= search_value.downcase
  			if( product_name.include? search_value)
  				flag=0
          puts "inside if statement n i value is #{i}"
  			else	
  				@driver.find_element(:css,"#product-container > div > ul > li:nth-child(#{i}) > div > div.product-image > a > img").click
  				wait_for_spinner
  				sleep(3)
  				product_type = @driver.find_element(:css,"#product-view-container > div.for-product-view").text
  				product_type= product_type.downcase
  				if product_type.include? search_value
  					flag=0
            puts "inside else if statement n i value is #{i}"

            @driver.navigate.back
  				else
  					flag=1
  					break
  				end
  			end		
        puts "flag value is #{flag}"
  					
        if i==3
  			 @driver.execute_script("window.scrollBy(0,100)", "") #scroll down after checking the products in first row
        end
  		end
  		puts "flag value is #{flag}"
  		if flag==1
  			puts "Search page contains unrelated products!!"
  		else
  			puts "search page contains relevant products "
  		end
  		#end
end

def all
  launch_styletag
  searchBox
  end
all