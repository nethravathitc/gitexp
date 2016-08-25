def out
	puts "function outside the class"
end
module First
	def initialize(y)
		puts "inside modules initialize"
		puts "y value is #{y}"
	end
	def func1
		puts "Inside First module , inside func1"
	end

	
end
class ModuleClass
		def initialize(y)
			puts "inside moduleclass initialize"
			puts "y value is #{y}"
		end
		def func2
			puts "Inside Module- class function"
		end
	end

	out
