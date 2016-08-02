require_relative 'require_exp.rb'
m = MotorCycle.new('RED','YAMAHA')
m.start_engine

class MotorCycle
	def disp_attr
		puts "The color of the motorcycle is #{@color}"
		puts "The make of motor cyclr is #{@make}"
	end
end

m.disp_attr
m.start_engine
