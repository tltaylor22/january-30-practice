require 'minitest/autorun'
require_relative 'jan_30.rb' 

class RaffleArray < Minitest::Test 

	def test_1_equal_1
		assert_equal(1,1)
	end
		
# Part 1: Write a winning numbers function. This function takes a number and an array of numbers, and returns true or false(a boolean): true if the number is in the array, and false if not. Should be test driven, with commits every test. A good first test could be a number and an empty array, which should return false.
	def test_returns_false
		winnum = '2345'
		win_tickets_array = ['1234']
		assert_equal(false, raffle_function(winnum,win_tickets_array))
	end

	def	test_returns_true
		winnum = '2345'
		win_tickets_array = ['2345']
		assert_equal(true, raffle_function(winnum,win_tickets_array))
	end

	def test_multi_numbers_returns_true
		winnum = '2345'
		win_tickets_array = ['2345', '1555', '1234']
		assert_equal(true, raffle_function(winnum,win_tickets_array))
	end

	def test_multi_numbers_returns_false
		winnum = '2345'
		win_tickets_array = ['2346', '1555', '1234']
		assert_equal(false, raffle_function(winnum,win_tickets_array))
	end
end

# Part 2: Write a function that takes two numbers as strings, and returns true if they are off by one digit. eg if we pass '1234' and '1224' then the function should return true. '1234' and '1325' should return false.
	def test_false_if_numbers_are_not_off_by_one
		winnum = '2345'
		win_tickets_array = ['2356']
		assert_equal(false, off_by_one('2345', '2356'))

# Part 3: Write a function that takes a number (our ticket number) and an array of numbers (the winning numbers from all the draws). To start with, just restrict to all 4 digit numbers. Having the numbers as strings may make it easier to solve. The function should return an array of all the winning numbers that are one digit off from our ticket number. eg our_number = '1234' and winning numbers = ['9999', '5678', '1235', '1134', '1344'] should return ['1235', '1134']
