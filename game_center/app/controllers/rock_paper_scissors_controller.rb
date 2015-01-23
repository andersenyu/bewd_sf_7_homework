class RockPaperScissorsController < ApplicationController

	#get requests can't be empty 
	def new
		@hello = "hello"
	end

	def show

		@userweapon = get_throw[params[:id].to_i]	
		@compweapon = get_throw[rand(3)]
		winner(@userweapon, @compweapon)
		
	end

	def get_throw
			["rock", "paper", "scissor"]
	end

	def winner(userweapon, compweapon)
		beats = {"rock" => "scissor",
				 "scissor" => "paper",
				  "paper" => "rock"}

	
		if beats[userweapon] == compweapon
			@status = "You are a winner!"
		elsif userweapon == compweapon	
			@status = " It's a tie"
		else 
			@status = "Sorry, you lost"
		end  


		if compweapon == "rock"
			@comp_image = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR1IDMp7DMeCDwiGmG2MY4QnmsWV5iY-Eo5I2B_2T1Hat0luSRzVg"
		elsif compweapon == "paper"
			@comp_image = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRWke0OnNY4tWK4wqyiYFqoNm_uttyOfgHFpS-yNk2Hjo5e-jB8"
		else 
			@comp_image = "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSVrc5N0rdHYticmvtvXUkrtDX9iqCb05Y0LisijLLXONB2EwSY"
		
		end	
	end

	
end

