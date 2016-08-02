$golb=5
class TestVar
	@@cla =6
	CONST_VAL=10
	def initialize(x)
		@inst=x
		@@cla +=1

	end

	def self.cla 	#class variable setter, method name is same as variable name
		@@cla
	end

	def inst	# instance variable setter, method name is same as instance variable name
		@inst
	end

	def self.cla=(y)
		@@cla=y
	end

	def inst=(y)
		@inst=y
	end

	def methos_missing(m,*arg, &block) # missing methods
		puts "There is no method called #{m} here... plz try again"
	end

end

puts "global variable value :"+ $golb.to_s

test= TestVar.new(2)
puts "instance variable value before assignment :"+test.inst.to_s
test.inst=100
puts "instance variable value after assignment :"+test.inst.to_s

puts "class variable before assignment :" +TestVar.cla.to_s
TestVar.cla=600
puts "class variable after assignment :" + TestVar.cla.to_s 

#test.anything(10)
puts Symbol.all_symbols