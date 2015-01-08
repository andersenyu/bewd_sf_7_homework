$:.unshift (File.dirname(__FILE__))
require 'lib/game'

# put code here print a welcome message for your user
puts "Welcome player!"
# put code here ask the user for their name, and save it
puts "Hello player, what is your name?"
player = gets.chomp
# put code here to create a new game, and start it
go = Game.new(player)
go.play
