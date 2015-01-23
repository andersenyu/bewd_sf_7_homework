class ArtistsController < ApplicationController



	def new
		@artist = Artist.new
	end
	 

	def edit
		@artist = get_artist
	end

	 def create 
	 	@artist = Artist.new(artist_params)
	 	@artist.save
	 	redirect_to artist_path(@artist)
	 end

	def index
		@artists = Artist.all
	end


	def show 
		@artist = get_artist
	end


	def destroy 

		@artist = get_artist
		@artist.destroy
		redirect_to artists_path
	end


	def update
		@artist = get_artist
		@artist.update(artist_params)
		
		redirect_to artist_path(@artist)

	end

	private

	def artist_params
		params.require(:artist).permit(:name, :pic_url, :genre_id)
	end


	def get_artist
		@artist = Artist.find(params[:id])
	end




end
