

class A
	def initialize(y)
		puts "inside A initialize"
		@path =y
		puts "#{@path}"
	end

	def funcA
		puts"Inside funcA #{@path}"
	end
end
class B
	def initialize
		@p= A.new("path value")
	end
	def funcB
		puts "Inside funcB"
		@p.funcA
	end
end
b= B.new
b.funcB