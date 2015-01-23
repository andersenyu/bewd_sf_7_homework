class RecordLabelsController < ApplicationController
  def new
    @record_label = RecordLabel.new
  end

  def create
  	@record_label = RecordLabel.new(record_label_params)
    if @record_label.save
      redirect_to record_label_path(@record_label)
    else
      render :new
    end
  end

  def index
    @record_labels = RecordLabel.all 
  end

  def show
    @record_labels = get_record_label
  end

  def edit
    @record_label = get_record_label
  end

  def update
    @record_label = get_record_label
    @record_label.update(record_label_params)
    redirect_to record_label_path(@record_label)
  end

  def destroy
    @record_label = get_record_label
    @record_label.destroy
    redirect_to record_labels_path
  end

  private

  def record_label_params
  	params.require(:record_label).(:name)
  end

  def get_record_label
  	@record_label = RecordLabel.find(params[:id])
  end
end
