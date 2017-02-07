def valid_digits(num)
# passing in a string, return a boolean

	if num.length == 10
		true
	else 
		false
	end
end 

def remove_spaces(isbn_num)

	# isbn_num.delete(' ' '-')

	isbn_num.gsub(/[ -]/, '')

end

def no_letters(number)

	if number.match(/[a-z A-Z]/)
		false

	else
		true

	end
end

def yes_to_x(numb)

	if numb[-1].match(/[0-9 x X]/)
		true
	else 
		false
	end
end

def check_digit(check)
	valid = false
	total = 0
	index_pos = 0
	index_count = 1
	

	counter = check.chop
	counter.length.times do 

		total = total + check[index_pos].to_i * index_count
		index_pos = index_pos + 1
		index_count = index_pos + 1
	end

	digit = total % 11

	if digit == 10 && check[-1].match(/[xX]/) 
		valid = true
	elsif digit == check[-1].to_i 
		valid = true
	
	end
	valid
end

def valid_13_digits(num)

	if num.length == 13
		true
	else 
		false
	end
end






	
