require 'pry'
require 'pry-byebug'

num = 99

def number(num)
	num > 1 ? " bottles " : " bottle "
end

until num == 0
	number = number(num)
	puts "#{num} #{number} of beer on the wall"
	puts "#{num} #{number} of beer!"
	puts "You take one down and pass it around,"
	num -= 1
	if num != 0	
		puts "#{num} #{number(num)} of beer on the wall!"
	else
		puts "No more bottles of beer on the wall :-("
	end
end

