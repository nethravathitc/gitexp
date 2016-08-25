require './module'
include First
class Second
	def initialize
		#First::initialize("path value")
		super("path value")
		puts "inside Second class initialize"
		#@s= ModuleClass.new("path value")
	end
	def func2
		puts "Inside Second class func2"
		#@s.func2
	end
end
obj=Second.new #("value from new")
obj.func2
#obj.func1

require '/home/styletag/QAnew/hybrid_framework/funtional_lib/readexceldata.rb'
class Third
	def initialize
		@obj = Read.new('/home/styletag/QAnew/hybrid_framework/test_case/inputdata.xls')
	end
	def func3
		puts "Inside Third class func3"
		puts @obj.dataread(2,0)
	end
end

#obj3=Third.new
#obj3.func3
#obj3.func1

#obj4=ModuleClass.new
#obj4.func2


