###
# program to print the beer song
# i do not subject you to 99 verses by default, you're welcome :p
# elyse watts 
# 8 dec 2014
###

require 'pry'
require 'pry-byebug'

def sing_verse(beer_count)
	until beer_count == 0
		puts "\n#{beer_count} bottles of beer on the wall, #{beer_count} bottles of beer,"
		puts "take one down, pass it around, "  #I don't want a newline here
		# i don't think i should have to assign here,
		# but just calling drink_beer doesn't decrement the variable
		# not sure why yet
		beer_count = drink_beer(beer_count) 
		puts "#{beer_count} bottles of beer on the wall."
	end
	puts "\nTime for a beer run!\n"  #newline at the end not working?!?
end

def drink_beer(beer_count)
# not sure why -= does not work here
beer_count = beer_count.to_i - 1
end 

puts "how many bottles of beer do you have?"  # I don't want a newline here either
beer_count = gets.chomp
sing_verse(beer_count)
	


