class EventsController < ApplicationController
  before_action :authenticate_deejay!, except: [:show, :index]
  before_filter :set_event, only: [:show, :edit, :update]

  def index
      @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_deejay.events.create(event_params)

    if @event.save
      redirect_to deejay_path(current_deejay)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to deejay_path(current_deejay)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @event = set_event
    @event.destroy
    redirect_to deejay_path(current_deejay)
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :date, :description)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
