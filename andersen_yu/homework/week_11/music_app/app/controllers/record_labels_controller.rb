class RecordLabelsController < ApplicationController
  def index
  	#create instance variable, camel case
  	@record_labels = RecordLabel.all
  end

  def show
  	@record_label = RecordLabel.find(params[:id])
  end

  def create
    @record_label = RecordLabel.new(record_label_params)
    if @record_label.save
      redirect_to record_label_path(@record_label)
    else
      render :new
    end
  end

  def new
    @record_label = RecordLabel.new
  end

  def edit
    @record_label = get_record_label
    @record_label = RecordLabel.all
  end

  def destroy
  end

  def update
    @record_label = get_record_label
    @record_label.update(record_label_params)
    redirect_to record_label_path(record_label_params)
  end

  private

  def record_label_params
  	params.require(:record_label).permit(:name)
  end

  def get_record_label
  	@record_label = RecordLabel.find(params[:id])
  end
  
end
