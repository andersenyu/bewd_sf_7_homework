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

for i in (99).downto(1)
	if i > 1
		puts "#{i} number of bottles of beer on the wall. "
		puts "#{i} bottles of beer!\nYou take one down pass it around,\n #{i} bottles of beer on the wall!"
	else
		puts "#{i} number of bottle of beer on the wall. "
		puts "#{i} bottle of beer!\nYou take one down pass it around,\n #{i} bottle of beer on the wall!"
	end
end