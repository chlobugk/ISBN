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
	index_pos = 0
	

	# counter = check.chop
	# counter.length.times do 

	# 	total = total + check[index_pos].to_i * index_count
	# 	index_pos += 1
	# 	index_count += 1
	# end

	# check_digit = total % 11

	# if check_digit == 10 && check[-1].to_i == check_digit
	# 	true
	# else
	# 	false
	# end
	




	check[index_pos].to_i

	if (((check[-10] * 1) + (check[-9] * 2) + (check[-8] * 3) + (check[-7] * 4) + (check[-6] * 5) + (check[-5] * 6) + (check[-4] * 7) + (check[-3] * 8) + (check[-2] * 9)) % 11) == check[-1]
		true
	else
		false
	end
end






	
