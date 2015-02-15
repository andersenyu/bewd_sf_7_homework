class DeejaysController < ApplicationController
  before_action :authenticate_deejay!, except: [:show, :index]
  before_filter :set_deejay, only: [:show, :edit]

  def index
    @deejays = Deejay.all
  end

  def show
    @deejay = set_deejay
    @deejay_events = @deejay.events
  end

  def new
    @deejay = Deejay.new
  end

  def create
    @deejay = Deejay.new(deejay_params)

    if @deejay.save
      redirect_to deejays_path
    else
      render :new
    end
  end

  def edit
    if deejay_signed_in?
    @deejay = Deejay.find(params[:id])
  else
    render :new
  end
  end

  def update
    @deejay = Deejay.find(params[:id])

    if @deejay.update(deejay_params)
      redirect_to @deejay
    else
      render 'edit'
    end
  end

  def destroy
    @deejay = set_deejay
    @deejay.destroy
    redirect_to deejays_path
  end

private

  def set_deejay
    @deejay = Deejay.find(params[:id])
  end

  def deejay_params
    params.require(:deejay).permit(:name, :description, :twitter, :email, :soundcloud, :photo_url)
  end
end
