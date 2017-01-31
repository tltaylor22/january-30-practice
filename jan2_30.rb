# Write a function that takes two numbers as strings, and returns true if they are off by one digit.
def off_by_one(winnum, ticket_num)
	matches = 0
	index_position = 0

	ticket_num.length.times do

	if ticket_num[index_position] == winnum[index_position]
		matches = matches + 1 # or matches += 1
	end

	index_position += 1
	end

	if winnum.length - matches == 1
		true
	else
		false
	end

end	

def returning_function(winnum, ticket_num)
	array = []
	
	ticket_num.each do |ticket_num|
		
		if off_by_one(ticket_num, winnum)
			array << ticket_num
		end	
	end
	array
end	