def new_count bottles
	while bottles > 2
		bottles = bottles -1 
		puts bottles.to_s + " bottles of beer on the wall!"
		puts bottles.to_s + " bottles of beer!"
		puts "take one down, pass it around!"
	end
 	puts "1 bottle left!"
 	puts "take one down, pass it around!"
end

def whiskey_count whiskey
	while whiskey > 2
		whiskey = whiskey - 1
		puts whiskey.to_s + " bottles of whiskey on the wall!"
		puts whiskey.to_s + " bottles of whiskey!"
		puts "take one down, pass it around!"
	end
	puts "1 bottle of beer on the wall!"
	puts "& now you are pissed!"
end


new_count 100
whiskey_count 100