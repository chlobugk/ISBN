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






	
