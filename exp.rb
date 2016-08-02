class Exp
	#attr_reader :a #symbol
	def initialize
		@a=0
		@b=0
	end

	def b=(y)
		@b=y
		@a=30		
	end
	def b
		@b
	end
end
e=Exp.new
puts e.a
puts e.b

#e.a=10
e.b=20

puts e.a
puts e.b