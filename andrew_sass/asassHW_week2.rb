# Goal: Make a program that "sings" the 99 bottles of beer song

# start pseudo code

# define a variable for beer's start number (99)
# define a variable for the number of beer bottles with one subtracted each time
# create a loop that subtracts 1 from each iteration of the song until it gets down to 1 bottle of beer left
# make the program print the last, singular verb line of the song

beer_num = 99
next_beer = beer_num

while next_beer > 1
	puts next_beer.to_s + " bottles of beer on the wall, " + next_beer.to_s + " bottles of beer!" 
	next_beer = next_beer - 1
	puts "Take one down, pass it around ..." + next_beer.to_s + "bottles of beer on the wall!"
end

puts "1 bottle of beer on the wall, 1 bottle of beer. Take one down, pass it around ... no more bottles of beer on the wall! (And everyone's probably drunk.)"	