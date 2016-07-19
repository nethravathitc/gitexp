require 'spreadsheet'
book = Spreadsheet.open('./inputdata.xls')
sheet1 = book.worksheet 0
sheet1.each_with_index do |row, index|
  for column in 0..(row.length-1)
    puts "Row:- #{index}, Column: #{column}, Value: #{row[column]}" 
  end
end