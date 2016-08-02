class AccessControl
	def m1 #this method is public
	end

	protected
	def m2
	end

	private
	def m3
	end
end
ac= AccessControl.new
ac.m1
#ac.m2
#ac.m3

class AccessControl2
	def m1
	end
	def m2
	end
	def m4
	end
	
	protected  :m2
	private :m4
end

class Person
	def initialize(age)
		@age=age
	end
	def age
		@age
	end

	def compare(c)
		if c.age>age
			puts "the other objects age is greater than this object"
		else
			puts "this object age is equal or less than other object's age"
		end
	end
	protected :age
end

Bimba=Person.new(5)
Belli=Person.new(5)

Bimba.compare(Belli)
puts Bimba.age