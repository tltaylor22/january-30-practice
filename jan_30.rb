# check to see if a number is in an array

def raffle_function(winnum,win_tickets_array)
	# win_tickets_array.include?(winnum) or write it as below:
	
	# if win_tickets_array.include?(winnum) # a 2nd way
	# 	true
	# else
	# 	false
	# end	
	# counter = 0 # a 3rd way when you cannot use .include?
	# win_tickets_array.each do |ticket|
	# 	if winnum == ticket
	# 		counter = counter + 1
	# 	end
	# end		
	# if counter > 0
	# 	true
	# else
	# 	false	
	# end
		counter = [] # a 4th way
	win_tickets_array.each do |ticket|
		if winnum == ticket
			counter << ticket #pushes ticket into the array which is our counter
		end
	end		
	if counter.length > 0
		true
	else
		false	
	end

end	