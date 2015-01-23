class SecretNumbersController < ApplicationController
  def show
  	@secret_number = select_random_number.sample
  	@chosen_number = params[:id].to_i
  end

  def new
  	@secret_numbers = select_random_number
  end

  private
  def select_random_number
  	(1..5).to_a
  end

end
