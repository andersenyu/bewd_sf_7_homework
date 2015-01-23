class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create 
    @track = Track.new(tracks_params)
    @track.save
    redirect_to track_path(@track)
  end

  def show
    @track = get_track
  end

  def destroy
    @track = get_track
    @track.delete
    redirect_to tracks_path
  end

  def edit
    @track = get_track
  end

  def update
    @track = get_track
   
    if @track.update(tracks_params)
      redirect_to @track
    else
      render 'edit'
    end
  end

private

  # #declares what can be written & read 
  def tracks_params
    params.require(:track).permit(:title, :track_link, :length, :artist_id)
  end

  def get_track
    @track = Track.find(params[:id])
  end
end
