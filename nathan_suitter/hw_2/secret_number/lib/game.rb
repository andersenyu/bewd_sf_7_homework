require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  attr_accessor :maker, :name
  def initialize(maker,name)
    @maker = maker
    @name = name
  end

  def direct
    puts "\nHey #{name},

Here's the skinny. I'm going to 
randomly pick a number from 1 to 
10. You guess what is it is and 
I'll tell you if you're high or
low. You can keep going until you 
guess the right number. At any 
point you can enter stop and the 
game will conclude. Good luck!\n\n"
    ready?(0)
  end

  def to_s
    "This game was made by #{@maker} and the person playing it is #{name}"
  end

  def ready?(arg)
    if arg == 0
      puts "Are you ready? (y/n)"
    else
      puts "Would you like to play again (y/n)"
    end
    answer = gets.strip
    if answer == 'y'
      gen_number
    elsif answer == 'n'
      puts "Ok, come back when you think you're up for the challenge"
    else
      puts "Sorry I didn't catch that"
      if arg == 0
        ready?(0)
      else
        ready?(1)
      end
    end
  end

  def gen_number
    number = SecretNumber.new(nil).rand
    puts "Let's begin! What's your first guess"
    guess(number)
  end

  def next_guess
    puts "What's your next guess"
  end

  def guess(number)
    guess = gets.strip.to_i
    if guess > number
      puts "Looks like your guess is high, try a smaller number"
      next_guess
      guess(number)
    elsif guess < number
      puts "Looks like your guess is low, try a larger number"
      next_guess
      guess(number)
    else
      puts "That's it! Good guess!"
      ready?(1)
    end   
  end   
end
