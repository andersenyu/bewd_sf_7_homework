class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit
    @artist = get_artist
  end

  def update
    @artist = get_artist
    @artist.update_attributes(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end  

  def show
    @artist = get_artist
  end

  def index
    @artists = Artist.search(params[:search])
  end

  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to artists_path
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :pic_url, :record_label_id, :genre_id)
  end

  def get_artist
    @artist = Artist.find(params[:id])
  end

end
