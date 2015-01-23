class RecordLabelsController < ApplicationController
  def index
  	#create instance variable, camel case
  	@record_labels = RecordLabel.all
  end

  def show
  	@record_label = RecordLabel.find(params[:id])
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def record_label_params
  	params.require(:record_label).permit(:name)
  end

  def get_record_label
  	@record_label = RecordLabel.find(params[:id])
  end
  
end
