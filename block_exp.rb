def call_block
	puts "start of method"
	yield
	yield
	puts "End of method"
	yield
end
call_block {puts "inside the block"}

def call_block2
	puts "start of block2"
	yield("hail",100)
	yield("bye",200)
	puts "end of block2"
end

call_block2 {|str,num| puts str + num.to_s}
