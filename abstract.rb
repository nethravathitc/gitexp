class AbstractClass
	def welcome
		puts "#{hello}, #{name}"
	end
end

class ConcreteClass < AbstractClass
	def hello
		"Hello"
	end

	def name
		'My Name'
	end
end
ConcreteClass.new.welcome