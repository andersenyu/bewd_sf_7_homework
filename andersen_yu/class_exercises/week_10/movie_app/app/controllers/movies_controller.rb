class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def show
    @movie = get_movie
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = get_movie
  end

  def create
    @movie = Movies.new(movies_params)
    @movie.save #active_record_method
    redirect_to_movie_path(@movie)
  end

  def update
  end

  def destroy
    @movie = get_movie
    @movie.destroy
    redirect_to_movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :year_released)
    #always params.requre(model).permit(all attributes)
  end

  def get_movie
    Movie.find(params[:id])
  end

end
