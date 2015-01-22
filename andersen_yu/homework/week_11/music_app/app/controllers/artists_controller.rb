class ArtistsController < ApplicationController
  def new
  	@artist = Artist.new
  end

  def index
    @artists = Artist.search(params[:search])
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
   end
  end

  def show
  	@artist = get_artist
  end

  def edit
    @artist = get_artist
    @record_labels = RecordLabel.all
  end

  def update
    @artist = get_artist
    @artist.update(artist_params)
    redirect_to artist_path(artist_params)
  end

  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to tracks_path(@artist)
  end


  private

  def artist_params
  	params.require(:artist).permit(:name, :pic_url, :record_label_id)
  end

  def get_artist
  	@artist = Artist.find(params[:id])
  end

end
