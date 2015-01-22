class RecordLabelsController < ApplicationController
  def new
  	@record_label = RecordLabel.new
  end

  def create
  	@record_label = RecordLabel.new(record_params)
	@record_label.save
    redirect_to record_labels_path(@record_label)
  end

  def update
    @record_label = get_record_label
    @record_label.update_attributes(record_params)
    @record_label.save
    redirect_to record_label_path(@record_label)
  end 

  def edit
  	@record_label = get_record_label
  end

  def show
  	@record_label = get_record_label
  end

  def index
    @record_labels = RecordLabel.all
  end

  def destroy
    @record_label = get_record_label
    @record_label.destroy
    redirect_to record_label_path
  end

  private
  def record_params
    params.require(:record_label).permit(:name, :pic_url)
  end

  def get_record_label
    @record_label = RecordLabel.find(params[:id])
  end
 end