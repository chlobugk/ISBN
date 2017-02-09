def valid_digits(num)
 # passing in a string, return a boolean

 
	if num.length == 10 || num.length == 13
		true
	else 
		false
	end
end 



def remove_spaces_dashes(isbn_num)

	# isbn_num.delete(' ' '-')

	isbn_num.gsub(/[ -]/, '')
end



def no_letters(num)

	if num.match(/[a-z A-Z]/)
		false
	else
		true
	end
end



def no_symbols(num)

	if num.chop =~ /\D/
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



def check_digit_10(num)
	valid = false
	total = 0
	index_num = 0 #1st number is in 0 position
	index_pos = 1 #each digit: 1st, 2nd, etc
	

	counter = num.chop
	counter.length.times do 

		total = total + num[index_num].to_i * index_pos 
		index_num = index_num + 1
		index_pos = index_num + 1
	end

	digit = total % 11

	if digit == 10 && num[-1].match(/[xX]/) 
		valid = true
	elsif digit == num[-1].to_i 
		valid = true	
	
	end
	valid
end



def check_digit_13(num)
	valid = false
	total = 0
	index_num = 0
	even = 2
	counter = num.chop
	counter.length.times do

		if even % 2 == 0
			total = total + num[index_num].to_i 
		else 
			total = total + num[index_num].to_i * 3
		end
			even = even + 1
			index_num = index_num + 1
		
	end	

		check = (10 - (total % 10)) % 10

		if check == num[-1].to_i
			valid = true
		else
			valid = false

		end
		valid
end


def final_isbn(number)
	
	final = remove_spaces_dashes(number)

		if final.length == 10
			no_letters(final)
			no_symbols(final)
			yes_to_x(final)
			check_digit_10(final)
				
		else final.length == 13
			no_letters(final)
			no_symbols(final)
			check_digit_13(final)
				
		end
		
end







	
