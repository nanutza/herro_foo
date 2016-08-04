# 99 bottles of beer on the wall. program to print Lyrics to that beloved classic "99 Bottles of Beer on the Wall"

count = 99
while count >= 0
if count == 0
	puts "\nNo more bottles of beer on the wall, no more bottles of beer." 
	puts "Go to the store and buy some more, 99 bottles of beer on the wall"

elsif count == 1
	puts "\n1 bottle of beer on the wall, 1 bottle of beer."
	puts "Take one down and pass it around, no more bottles of beer on the wall."
else 
	puts "\n#{count} bottles of beer on the wall, #{count} bottles of beer."
	puts "Take one down and pass it around, #{count - 1} bottles of beer on the wall."
end
count -=1
end
# <#
