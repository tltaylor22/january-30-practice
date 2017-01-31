require 'minitest/autorun'
require_relative 'jan2_30.rb' 

class TestOffByOne < Minitest::Test 

# Part 2: Write a function that takes two numbers as strings, and returns true if they are off by one digit. eg if we pass '1234' and '1224' then the function should return true. '1234' and '1325' should return false.
	def test_false_if_numbers_are_not_off_by_one
		winnum = '2337'
		ticket_num = '2337'
		results = off_by_one(winnum, ticket_num)
		assert_equal(false, results)
	end

	def test_one_off_returns_true
		winnum = '1245'
		ticket_num = '2245'
		results = off_by_one(winnum, ticket_num)
		assert_equal(true, results)
	end

	def test_two_off_returns_false
		winnum = '2247'
		ticket_num = '3257'
		results = off_by_one(winnum, ticket_num)
		assert_equal(false, results)
	end
end	

class TestReturnRaffle < Minitest::Test 

# Part 3: Write a function that takes a number (our ticket number) and an array of numbers (the winning numbers from all the draws). To start with, just restrict to all 4 digit numbers. Having the numbers as strings may make it easier to solve. The function should return an array of all the winning numbers that are one digit off from our ticket number. eg our_number = '1234' and winning numbers = ['9999', '5678', '1235', '1134', '1344'] should return ['1235', '1134']
	def test_return_array
		winnum = '1234'
		ticket_num = ['5678', '9999', '5656']
		assert_equal([], returning_function(winnum, ticket_num))
	end

	def test_return_array_off1
		winnum = '1234'
		ticket_num = ['3234', '5555', '6789']
		assert_equal(['3234'], returning_function(winnum, ticket_num))
	
	end
		def test_return_array_off1s_extra
		winnum = '1234'
		ticket_num = ['3234', '5555', '6789', '2234']
		assert_equal(['3234', '2234'], returning_function(winnum, ticket_num))
	end

end			