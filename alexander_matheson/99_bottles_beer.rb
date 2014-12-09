#99 bottles of beer on the wall
bottles = 99

while bottles > 0
	old_bottles = bottles
	bottles = bottles - 1
	if bottles >= 1
		puts "#{old_bottles} bottles of beer on the wall,
		#{old_bottles} bottles of beer,
		take 1 down, pass it around,
		#{bottles} bottles of beer on the wall"
	elsif bottles >= 1 
		puts "#{old_bottles} bottles of beer on the wall,
		#{old_bottles} bottles of beer,
		take 1 down, pass it around,
		#{bottles} bottle of beer on the wall"
	else
		puts "#{old_bottles} bottle of beer on the wall,
		#{old_bottles} bottle of beer,
		take 1 down, pass it around,
		no more bottles of beer on the wall :-("
	end
end