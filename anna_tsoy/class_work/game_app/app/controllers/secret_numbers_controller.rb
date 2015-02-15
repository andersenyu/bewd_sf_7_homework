class SecretNumbersController < ApplicationController
  def new
  end

  def show
  	@player_number = params[:id].to_i
		@secret_number = select_secret_number
  end

  private

  #number gets randomly selected from array
	def select_secret_number
		numbers = (1..5).to_a
		numbers.sample
	end

	# def who_wins(secret_number, player_number)
	# 	if @secret_number == @player_number
	# 		"you win!"
	# 	else
	# 		"you loose!"
	# 	end
	# end
end
