class Exp
	attr_reader :a ,:c# attribute reader
	attr_writer :c , :a # attribute writer
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

puts "attribute reader and writer"
e.c=100
puts "c value is :" + e.c.to_s
e.a=200
puts "a attribute value is :" + e.a.to_s