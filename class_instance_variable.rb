class Dog
	def initialize( x )
		@a = x
	end

	def display
		puts "The a value is #{@a}"
	end
end

d= Dog.new(20)
d.display

if d.respond_to?("talk")
	d.talk
else
	puts "object d didn't respond"
end
# making d1 point to d
d1=d
d1.display


d=nil
d.display

puts "d1 callind display again"
d1.display

#puts d.methods.sort

puts d1.object_id
puts d.object_id

puts d1.class

num=10
puts (num.instance_of? Fixnum)
puts (d.respond_to? "Display")