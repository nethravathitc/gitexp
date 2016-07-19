module Read
def Read.dataread(r,c)
	require 'spreadsheet'
	#@data1
	book = Spreadsheet.open('./inputdata.xls')
	sheet1 = book.worksheet 0
	sheet1.each_with_index do |row, index|
  	for column in 0..(row.length-1)
  		if index==r and column==c

    #puts "Row:- #{index}, Column: #{column}, Value: #{row[column]}" 
    		 @data1 = row[column]

    		break
		end
  	end
  	end
  	return @data1
 end
end

 #email=dataread(1,0)
 #pass = dataread(1,1)
 #name = dataread(1,2)

