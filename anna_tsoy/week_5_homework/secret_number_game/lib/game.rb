require 'lib/person'
require 'lib/secret_number'

require 'pry'
require 'pry-byebug'

class Game
	attr_accessor :player, :secret_number 

	def initialize  (player)
		@player = Person.new(player)
		@secret_number = SecretNumber.new.to_i
	end
	
	def play
		puts "Hello #{@player}, I am thinking of a number between 1 & 10. \n Try to guess it. \n You have 3 chances."

		@tries = 1
		while @tries < 4 
			get_guess
			@tries = @tries + 1
			break if @guess == @secret_number
		end
	end
		
	def get_guess
		puts "Give me your guess:"
		guess = gets.to_i
 		@guess = guess
 		compare(guess)
	end

	def compare (guess)
		if @guess == @secret_number
			puts "You guessed it!"
		elsif @guess != @secret_number && @tries < 3
			if @guess > @secret_number
				puts "Your guess is too high. Try again."
			else @guess < @secret_number
				puts "Your guess is too low. Try again."
			end
		else 
			puts "Sorry #{player}, you are out of attempts. You loose!"
			puts "The secret number is #{secret_number}"
		end
	end
end

