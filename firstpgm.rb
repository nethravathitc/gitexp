# class definition
class First
	@a 
	@b 
	def initialize(m,n)
		@a=m
		@b=n
	end
	def print
		puts "a value is #{@a}"

		puts "b value is #{@b}"

	end

end
 ob1=First.new(10,20)
 ob1.print()