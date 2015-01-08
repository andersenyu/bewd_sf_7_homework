require 'lib/person'
require 'lib/secret_number'



#class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	#attr_accessor :player, :secret_number

	#def initialize (name)
	#	@name = name
	#	@player = Person.new (name)
	#	@secret_number = SecretNumber.new
	#end
#build player
	# def self.build_person (name)
	# 	player = Person.new (name)
	# 	puts "It's time to play a game, #{name}."
	# end

#end

class Game

	attr_accessor :player, :secret, :name

	def initialize(name)
		@player = Person.new(name)
    	@secret = SecretNumber.new
	end


	#method for Game Start
	def intro
		puts "\nWelcome, #{@player.name}, to the Secret Number game\n\nHere are the rules:\n\n~ I (the all-knowing computer) will choose a random number between 1 and 10.\n~ Your mission, should you choose to accept it, will be to guess this number.\n~ You get three tries.\n~ Otherwise, game over!"
	end


	def start
		puts "What is your guess?"
		3.downto(1)	do |guess|
		get_guess = gets.chomp.to_i
		if	get_guess == @secret.number
				puts "Epic! You guessed right." #displayed to user if they win
				break
		elsif get_guess > @secret.number
				puts "Too High!" + "\n" + "Guess again. #{guess-1} left." #+ "\n\nWhat is your Guess?"
		elsif get_guess < @secret.number
				puts "Too Low!" + "\n" + "Guess again. #{guess-1} left." + "\n\nWhat is your Guess?"
		end
		end

	puts
	puts "The Game is over.\n"
	solution = @secret.number
	puts
	puts "The Secret number is " + "#{solution}."

	end
end
