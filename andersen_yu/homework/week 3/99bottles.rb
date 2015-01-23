puts "How many bottles are on the wall now?"
num_bottles = gets.chomp.to_i

num_bottles.downto(1) do |n|

multi_bottles_line_1 = "#{n} bottles of beer on the wall"
multi_bottles_line_2 = "#{n} bottles of beer!"	
pass_bottle = "You take one down and pass it around,"
multi_bottles_left = "#{(n-1)} bottles of beer on the wall!"
bottle_left = "#{(n-1)} bottle of beer on the wall!"

if n > 2
	puts multi_bottles_line_1
	puts multi_bottles_line_2
	puts pass_bottle
	puts multi_bottles_left
	puts
elsif n == 2
	puts multi_bottles_line_1
	puts multi_bottles_line_2
	puts pass_bottle 
	puts bottle_left
	puts
else
	puts "#{n} bottle of beer on the wall"
	puts "#{n} bottle of beer!"
	puts pass_bottle
	puts "You need to get more beer on the wall! Good-bye!"
	puts
end
end
