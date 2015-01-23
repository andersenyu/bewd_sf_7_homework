require_relative 'person'
require_relative 'secret_number'
require 'pry'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :player

	def initialize(player)
		#creating new player object
		@player = Person.new(player)
		#create new secret number object 
		@sec_num = SecretNumber.new
		#number of guesses 
		@guesses = 4
	end 

	def instructions
		puts "----------- Instructions -----------"
		puts "The goal of this game is to guess the secret number"
		puts "If you guess lower than the number, you will be told to guess higher"
		puts "If you guess higher than the secret number, you will be told to guess lower"
		puts "You'll have 4 trys to guess the correct number"
		puts "Or else your computer will blow up"
	end

	def game_start
		puts "Guess the number!"
		while @guesses > 0 do
			guessed_number = gets.strip.to_i
			check_logic(guessed_number)
		end
		if @guesses == 0
			play_again
		end
	end

	def check_logic(guessed_number)
		if guessed_number > @sec_num.generate_num
			puts "Hey #{player}, the number you guessed is too high! Guess lower!"
			@guesses = @guesses - 1
		elsif guessed_number < @sec_num.generate_num
			puts "Hey #{player}, the number you guessed is too low! Guess higher!"
			@guesses = @guesses - 1
		else 
			puts "Correct!!"
			@guesses = 0
		end
	end

	def play_again
		puts "Want to guess another secret number? Type \'yes\' or \'no\'"
		again = gets.strip.downcase
			if again == "yes"
				start_game_again
			else 
				puts "Thanks for playing!"
			end

	end

	def start_game_again
		@guesses = 4
		game_start
	end


end
