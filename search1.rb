require './yousa_desktop/config/utils'
include Utils
require './yousa_desktop/config/config'
include Authentication
require "selenium-webdriver"
def search
	search_value ="mugs"
	puts "search for #{search_value}"
  @driver.find_element(:css, "#aws_form_search > #appendedInputButtons").click
  @driver.find_element(:css, "#aws_form_search > #appendedInputButtons").clear
  @driver.find_element(:css, "#aws_form_search > #appendedInputButtons").send_keys("#{search_value}")
  @driver.find_element(:css, "#aws_form_search > #submitButton").click
  wait_for_spinner
  title = @driver.find_element(:css, "#catalog-wrap > h1").text   
  print "Page title: #{title} \n"
  sleep(5)
  @driver.find_element(:xpath, "//p[@id='price-htl-sort']/a[2]").click #high-low
  #@driver.find_element(:css, "#price-htl-sort > a:nth-child(2)").click  #low-high
  end
  
  def prices(i)
  	#wait_for_spinner
  	sleep(2)
  	begin 
	   price = @driver.find_element(:css,"#product-container > div > ul > li:nth-child(#{i}) > div > div.product-Info > span.product-price.pull-right > span.col-orange.text-right.text-capitalize.ng-binding").text()
	   price=price.gsub("Rs. ","").gsub(",","")
	 	price=price.to_i
		rescue Selenium::WebDriver::Error::NoSuchElementError
		@error_sale_index << i
		price=0
	end
  		return price
  end

  def price_compare
  slider_value = @driver.find_element(:css, "#price-filter > span.price-total-count").text.gsub("Items", "").to_i
  puts "slider_value is : #{slider_value}"
   @product_price =[]
  #s = []  
  @error_sale_index = []

	for i in 1..slider_value
		if prices(i)
			@product_price << prices(i)
		#else
			#error_sale_index << i
		end
		@driver.execute_script("window.scrollBy(0,100)", "")
		sleep(2)
	end
	puts "Product prices #{@product_price}"
	puts "Error sale index #{@error_sale_index}"

	flag=0
	for j in 0..slider_value-2
		#puts a = product_price[j]
		#puts b = product_price[j+1]
		if @product_price[j]!=0 && @product_price[j+1]!=0

			if @product_price[j] < @product_price[j+1]
				flag=1
				break
			end	
		end
	end
	if flag==0
		puts "prices are in descend_by_master_price"
	else
		puts "prices are not in descend_by_master_price"
	end


end

def all
  launch_styletag
  search
  price_compare
end
all




#{}"#product-container > div > ul > li:nth-child(1) > div > div.product-Info > span.product-price.pull-right > span.col-orange.text-right.text-capitalize.ng-binding"
#{}"#product-container > div > ul > li:nth-child(2) > div > div.product-Info > span.product-price.pull-right > span.col-orange.text-right.text-capitalize.ng-binding"