class MotorCycle
	def initialize(color,make)
		@color=color
		@make=make

	end
	def start_engine
		if @engine_state
			puts "Engine is already running"
		else
			@engine_state= true
			puts "Engine is idle"
		end
	end
end
m = MotorCycle.new('RED','YAMAHA')
m.start_engine
m.disp_attr