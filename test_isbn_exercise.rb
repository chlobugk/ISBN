require 'minitest/autorun'
require_relative 'isbn_exercise.rb'

class TestIsbnFunction < MiniTest::Test 
	def test_number_returns_true
		assert_equal(true, valid_function('1234567890'))
	end
end
