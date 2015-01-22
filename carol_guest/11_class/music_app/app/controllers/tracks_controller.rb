class TracksController < ApplicationController
  def new
  	@track = Track.new
  end

  def create
  	@track = Track.new(track_params)
  	@track.save
  	redirect_to tracks_path
  end

  # def show
  # end 

  def edit
  	@track = get_track
  end

def update
    @track = get_track
    @track.update_attributes(track_params)
    @track.save
    redirect_to tracks_path
  end  

  def index
    @tracks = Track.all
  end

  def destroy
    @track = get_track
    @track.destroy
    redirect_to tracks_path
  end


  private
  def get_track
  	@track = Track.find(params[:id])
  end

  def track_params
  	params.require(:track).permit(:name, :location, :rating, :artist_id)
  end
end
