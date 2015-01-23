class RockPaperScissorsController < ApplicationController
  def new
  	@throws = get_throws
  end

  def show #getting get_throws out of random, picking 0, 1, or 2
  	@game_throw = get_throws[rand(3)]
    @user_throw = get_throws[params[:id].to_i]
    @user_image = get_image(@user_throw)
    @comp_image = get_image(@game_throw)
    game_result(@user_throw, @game_throw)
  end

  def get_throws
  	['Rock', 'Paper', 'Scissors']
  end

  def game_result(user_throw, game_throw)
    beats = {"Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock"}

    if beats[user_throw] == game_throw
      @results = "You Win!"
    elsif user_throw == game_throw
      @results = "You Tied!"
    else
      @results = "You Lost!"
    end
  end

  def get_image(throw)
    if throw == "Rock"
      "http://graphics8.nytimes.com/images/2011/08/21/magazine/21mag-abstractimages-slide-XOE4/21mag-abstractimages-slide-XOE4-jumbo.jpg"
    elsif throw == "Scissors"
      "http://graphics8.nytimes.com/images/2011/08/21/magazine/21mag-abstractimages-slide-IRQ1/21mag-abstractimages-slide-IRQ1-jumbo.jpg"
    else throw == "Paper"
      "http://blog.waveavenue.com.s167390.gridserver.com/wp-content/uploads/2013/05/21mag-abstractimages-slide-2T4N-jumbo.jpg"
end 
end
end
