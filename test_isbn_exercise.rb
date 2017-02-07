require 'minitest/autorun'
require_relative 'isbn_exercise.rb'

class TestIsbnLength < MiniTest::Test 
	def test_10_returns_true
		num = '1234567890'
		assert_equal(true, valid_digits(num))
	end

	def test_9_returns_false
		num = '123456789'
		assert_equal(false, valid_digits(num))
	end

	def test_length_true_not_isbn
		num = '1234X67890'
		assert_equal(true, valid_digits(num))
	end
 
	def test_10_with_spaces_returns
		num = '123 456 7890'
		assert_equal('1234567890', remove_spaces(num))
	end

	def test_10_with_hyphens_returns
		num = '123-45--67-890'
		assert_equal('1234567890', remove_spaces(num))
	end

	def test_letter_returns_false
		num = '12345b7890'
		assert_equal(false, no_letters(num))
	end

	def test_no_letter_returns_true
		num = '1234567890'
		assert_equal(true, no_letters(num))
	end

	def test_last_x_returns_true
		num = '123456789x'
		assert_equal(true, yes_to_x(num))
	end

	def test_numb_returns_true
		num = '1234567890'
		assert_equal(true, yes_to_x(num))
	end

	def test_returns_false
		num = '123456789s'
		assert_equal(false, yes_to_x(num))
	end

	def test_check_digit_returns_true
		check = '0471958697'
		assert_equal(true, check_digit(check))
	end

	def test_check_also_returns_true
		check = '0-321-14653 0'
		assert_equal(true, check_digit(check))
	end

	def test_check_returns_false
		check = '7421394 762'
		assert_equal(false, check_digit(check))
	end

end

class TestIsbn13 < MiniTest::Test
	def test_check_13_length
		num = '1234567890123'
		assert_equal(true, valid_13_digits(num))
	end


end