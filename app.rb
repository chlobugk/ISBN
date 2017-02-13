require 'sinatra'
require_relative 'isbn_exercise'

	get '/' do   
	# 'Lets go see the northern lights!'
	erb :isbn_input, :locals => {:isbn_num => '', :results => '', :message1 => '', :message2 => ''}

end

post '/isbn_num' do
	isbn_num = params[:isbn_input]

results = final_isbn(isbn_num)

# "#{results} results shown here"

erb :isbn_input, :locals => {:isbn_num => isbn_num, :results => results, :message1 => 'is a', :message2 => 'ISBN'}


end
