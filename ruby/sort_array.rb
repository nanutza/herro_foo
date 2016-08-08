
word_array = []	

loop do
	puts "what is the word?"
	word = gets.chomp	

	if word == ""
		break
	end
	word_array << word
end
	
	p word_array.sort	
	
