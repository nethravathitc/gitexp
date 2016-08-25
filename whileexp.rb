require  '/home/styletag/QAnew/hybrid_framework/scripts/business_action.rb'
require '/home/styletag/QAnew/hybrid_framework/funtional_lib/readexceldata.rb'
include Read
require '/home/styletag/QAnew/hybrid_framework/funtional_lib/utils.rb'
include Utils
def while_exp
	#i=1
	#while dataread(i,0)!=nil
	#	test_suit= dataread(i,0)
	#		puts "Test Suit Name :" + test_suit
			
	#		test_case_id = dataread(i,1)
	#		puts "Test Case ID :" + test_case_id.to_s

	#		execution_flag = dataread(i,2)
	#		puts "Execution Flag :" + execution_flag

	#		i=i+1
	#end


			for i in 1..1
			test_suit= dataread(i,0)
			puts "Test Suit Name :" + test_suit
			
			test_case_id = dataread(i,1)
			puts "Test Case ID :" + test_case_id.to_s

			execution_flag = dataread(i,2)
			puts "Execution Flag :" + execution_flag
		
			if execution_flag=="YES"

				action= dataread(i,3)
				puts "Action Name :" + action
				@obj_action.login_positive_scenarios

				action= dataread(i,4)
				puts "Action Name :" + action
				@obj_action.logout
			else
				puts "Execution Flag :" + execution_flag

			end

		end
end




while_exp