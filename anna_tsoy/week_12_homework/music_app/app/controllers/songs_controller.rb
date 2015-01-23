class SongsController < ApplicationController
	def index
		@songs = Song.all
	end

	def new
		@song = Song.new
	end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    redirect_to artist_path(@artist)
  end

  def edit
  	@song = get_song
    @artist = @song.artist
  end

  def update
    @song = get_song
    @new_song = @song.update(song_params)
    redirect_to artist_path(@song.artist)
  end

  def destroy
    @song = get_song
    @song.destroy
    redirect_to artists_path(@song.artist)
  end

  private
    def song_params
      params.require(:song).permit(:name)
    end

    def get_song
    	@song = Song.find(params[:id])
    end
end
