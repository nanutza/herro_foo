# Deaf GrandMa

year = 1930 + rand(20)
tell_grandma = ""

while tell_grandma != "BYE"
	puts "What would you like to say to grandma??"
	tell_grandma = gets.chomp

		if tell_grandma == "BYE"
			break
		elsif tell_grandma.upcase == tell_grandma && tell_grandma != "BYE"
			puts "NO, NOT SINCE #{year}"
		else
			puts "HUH?! SPEAK UP, SONNY!"
		end
end
