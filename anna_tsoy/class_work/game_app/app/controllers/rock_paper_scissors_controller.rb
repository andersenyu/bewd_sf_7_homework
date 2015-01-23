
class RockPaperScissorsController < ApplicationController

	 # helper_method :determine_winner

	def new

	end

	def show
		@player_selection = params[:name]

		@comp_selection = ["rock", "paper", "scissors"].shuffle.first.to_s
		@game_play = determine_winner(@player_selection, @comp_selection)
 # binding.pry
	end
	# def player_selection_1
	# 	@player_selection.to_i + 1
	# end

	def determine_winner(player_selection, comp_selection) #is really does A win against B?
		
		rules = { paper:"rock", scissors:"paper", rock:"scissors" }

			if rules[@player_selection.to_sym] == @comp_selection  
				@status = :win
			elsif @player_selection == @comp_selection
				@status = :tie
			else
				@status = :lose
			end
	end	

	# def hash 
	# 	["rock", "raper", "scissors"]
	# end
end





