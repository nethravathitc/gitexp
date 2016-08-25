def retry_exp
	for i in 0..3
		if j==10
			puts "inside first if block"+"j value is "+ j.to_s
		else
			if j>10
				puts "inside j>10 if"
				j=j-10
			else
				puts "inside else of retry"
				j=10
				retry
			end
		end
	end

end
#retry_exp
def second
	j=-1
	begin
		if j>0
			puts "j value is"+j.to_s 
		end
	rescue
		j=1
		retry
	end
end
second