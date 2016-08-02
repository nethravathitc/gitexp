class Bicycle
	attr_reader :gears, :seats, :wheels
	def initialize(gears=1)
		@seats=2
		@wheels=2
		@gears=gears
	end

end
class Tandom < Bicycle
	def initialize(gears)
		super
		@seats=4
	end
	def seats=(y)
		@seats=y
	end
end

t= Tandom.new(2)
t.seats=10
puts t.seats
puts t.wheels
puts t.gears

b= Bicycle.new
b.seats=10
puts b.seats
puts b.wheels
puts b.gears
