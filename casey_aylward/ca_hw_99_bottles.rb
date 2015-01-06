require 'pry'
require 'pry-byebug'

#CLASS - LAB TIME & HOMEWORK

# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


bottles = 99

while bottles > 0
	if bottles > 2
		puts "#{bottles} bottles of beer on the wall"
		puts "#{bottles} bottles of beer"
		puts "take one down pass it around"
		bottles = bottles - 1
		puts "#{bottles} bottles of beer on the wall"
	elsif bottles == 2
		puts "#{bottles} bottles of beer on the wall"
		puts "#{bottles} bottles of beer"
		puts "take one down pass it around"
		bottles = bottles - 1
		puts "#{bottles} bottle of beer on the wall"
	else 
		puts "#{bottles} bottle of beer on the wall"
		puts "#{bottles} bottle of beer"
		puts "take one down pass it around"
		bottles = bottles - 1
		puts "no more bottles of beer on the wall :("	
	end		
end
