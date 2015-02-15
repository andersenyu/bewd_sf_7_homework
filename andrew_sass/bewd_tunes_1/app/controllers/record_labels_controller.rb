class RecordLabelsController < ApplicationController
  def index 
		@record_labels = RecordLabel.all
	end

	def new
    @record_label = RecordLabel.all
	end

	def create
    @record_label = RecordLabel.new(record_label_params)
    @record_label.save
    redirect_to record_label_path(@record_label)
  end
  
  def show
    @record_label = get_record_label
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def record_label_params
     params.require(:record_label).permit(:name)
  end

  def get_record_label
    @record_label = RecordLabel.find(params[:id])
  end

end
