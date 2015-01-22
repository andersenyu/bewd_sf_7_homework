class TracksController < ApplicationController
def index
    #create instance variable, camel case
    @tracks = Tracks.all
  end

  def show
    @track = get_track
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_path(@track)
    else
      render :new
    end
  end

  def new
    @track = Track.new
  end

  def edit
    @track = get_track
    @track= Track.all
  end

  def destroy
    @track = get_artist
    @track.destroy
    redirect_to track_path(@track)
  end

  def update
    @track = get_track
    @track.update(track_params)
    redirect_to track_path(track_params)
  end

  private

  def track_params
    params.require(:track).permit(:title, :track_link, :artist_id)
  end

  def get_track
    @track = Track.find(params[:id])
  end

end
