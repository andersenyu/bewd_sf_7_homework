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
while bottles > 1
	puts "#{bottles} bottles of beer on the wall, " +
	"#{bottles} bottles of beer!"
	bottles = bottles - 1
	puts "You take one down and pass it around, " +
	"#{bottles} bottles of beer on the wall! "
end 

if bottles == 1
	puts "#{bottles} bottle of beer on the wall, " +
	"#{bottles} bottle of beer!"
	puts "You take one down and pass it around,"
	puts "No more bottles of beer on the wall."
end

	

