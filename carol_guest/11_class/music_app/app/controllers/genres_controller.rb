class GenresController < ApplicationController
 def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genres_path(@genre)
    else
      render :new
    end
  end

  def edit
    @genre = get_genre
  end

  def update
    @genre = get_genre
    @genre.update_attributes(genre_params)
    @genre.save
    redirect_to genres_path(@genre)
  end  

  def show
    @genre = get_genre
  end

  def index
    @genres = Genre.all
  end

  def destroy
    @genre = get_genre
    @genre.destroy
    redirect_to genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def get_genre
    @genre = Genre.find(params[:id])
  end

end