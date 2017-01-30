# Write a function that takes two numbers as strings, and returns true if they are off by one digit.
def off_by_one(winnum, ticket_num)
	matches = 0
	index_position = 0

	ticket_num.length.times do

	if ticket_num[index_position] == winnum[index_position]
		matches = matches + 1
	end

	index_position += 1
end

winnum.length - matches == 1

end	