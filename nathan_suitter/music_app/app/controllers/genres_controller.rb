class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genres = get_genre
  end

  def new
    @genre = Genre.new
  end

  def create 
    @genre = Genre.new(genres_params)
    if @genre.save #active record_method
      redirect_to genres_path(@genres)
    else
      render :new
    end
  end

  def edit
    @genre = get_genres
  end

  def update
    @genre = get_genres
   
    if @genre.update(genres_params)
      redirect_to @genres
    else
      render 'edit'
    end
  end

  def destroy
    @genre = get_genre
    @genre.destroy
    redirect_to genres_path
  end


  private

  # #declares what can be written & read 
  def genres_params
    params.require(:genre).permit(:name)
  end

  def get_genre
    @genre = Genre.find(params[:id])
  end
end
