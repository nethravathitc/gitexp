require './module'
class New
	def funcnew
		puts "Inside new class's function"
		First.func1
	end
end
objn=New.new
objn.funcnew