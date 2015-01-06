#Question for later: lib/person and lib/secret_number did not load until called from "main" Why?
require 'lib/person'
require 'lib/secret_number'
require 'pry'
require 'pry-byebug'

class Game

	attr_accessor :name, :secret, :guess

	def initialize(name)
		@name = name
		@secret = create_secret_number
		@guess = nil
	end

	def create_secret_number
		num = SecretNumber.new
		num.number
	end

	def guess_and_compare
		guess_number
		if
			@guess == @secret
			puts "You win! The winning number is #{@secret}!"
		elsif
			@guess < @secret
			puts "Too low. Guess a higher number."
			guess_and_compare
		elsif @guess > @secret
			puts "Too high. Guess a lower number."
			guess_and_compare	
		else
			puts "You must enter a number between 1 and 10."
		end
	end

	def guess_number
		if @guess == nil
			puts "Guess a number between 1 and 10"
			@guess = gets.chomp.to_i
		else
			@guess = gets.chomp.to_i
		end
	end

end

# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly