class RockPaperScissorsController < ApplicationController
  def new
  	@rock_num = get_throws.index("Rock")
    @paper_num = get_throws.index("Paper")
    @scissors_num = get_throws.index("Scissor")
  end  

  def show
  	@game_throw = get_throws[rand(3)]
  	@user_throw = get_throws[params[:id].to_i]
    @user_image = get_image(@user_throw)
    @comp_image = get_image(@game_throw)
    game_result(@user_throw, @game_throw)
  end

  def get_throws
    ["Rock","Paper","Scissor"]
  end

  def game_result(user_throw, game_throw)
    beats = {"Rock" => "Scissor", "Scissor" => "Paper", "Paper" => "Rock"}

    if beats[user_throw] == game_throw
      @results = "You Win"
    elsif user_throw == game_throw
      @results = "You Tied"
    else
      @results = "You've Lost!"
    end
      
  end

  def get_image(throw)
    if throw == "Rock"
      "http://www.clker.com/cliparts/p/G/a/s/t/g/rock-th.png"
    elsif throw == "Paper"
      "http://www.clker.com/cliparts/Y/t/o/V/q/F/paper-th.png"
    else
      "http://www.clker.com/cliparts/8/B/i/M/Y/Z/scissors-th.png"  
    end
  end

end
