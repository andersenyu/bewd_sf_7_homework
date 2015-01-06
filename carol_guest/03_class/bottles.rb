def bottles (bottles)
while true
	if bottles > 1
		puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer"
		puts "Take one down, pass it around"
		bottles -= 1
	else
		puts "One bottle of beer on the wall, one bottle of beer"
		puts "Take it down, pass it around. No more beer on the wall."
		break
	end
end
end


while true
puts "How many bottles?"
num_bottles = gets.chomp.to_i

	if num_bottles > 0 && num_bottles < 100
		bottles(num_bottles)
		break
	else
		puts "Give me a workable number, man."
	end
end

