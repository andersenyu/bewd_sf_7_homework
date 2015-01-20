###############################################################################
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
require_relative 'lib/game'
require_relative 'lib/person'
require_relative 'lib/secret_number'
require 'pry'
require 'pry-byebug'
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.

def game_begin
	puts "Welcome to the Secret Numbers Game"
	puts "Before we get started, let's get to know a little bit about our contestant"
	puts "What is your name? \n"
	player = gets.strip
	puts "Well #{player}, let the odds be ever in your favor!"
	puts
    my_new_game = Game.new(player)
    my_new_game.instructions
    my_new_game.game_start
end

game_begin

# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#secret_number.rb done


# Player
#  Should initialize the player's name.
# person.rb done


# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
	# puts "Goal: Correctly guess the secret number"
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.

# $:.unshift (File.dirname(__FILE__))
# require 'lib/game'

# put code here print a welcome message for your user

# put code here ask the user for their name, and save it

# put code here to create a new game, and start it