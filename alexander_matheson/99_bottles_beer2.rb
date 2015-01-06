#99 bottles of beer on the wall using downto

for i in (99).downto(1)
	if i > 1
		puts "#{i} bottles of beer on the wall,
		#{i} bottles of beer,
		take 1 down, pass it around,
		#{i - 1} bottles of beer on the wall"
		puts
	else
		puts "#{i} bottle of beer on the wall,
		#{i} bottle of beer,
		take 1 down, pass it around,
		no more bottles of beer on the wall :-("
	end
end
