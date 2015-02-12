class ItemsController < ApplicationController
  def index
  	@items = Item.all #add search feature 
  end

  def home
    render :home
  end

  def show
  	@item = set_item
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
  		redirect_to item_path(@item)
  	else
  		render :new
  	end
  end



  def edit
  	@item = set_item
  end

  def update
    @item = set_item
    if @item.update(item_params)
      redirect_to member_path(current_member)
    else
      render :edit
    end
  end


  def checkout
  	@item = set_item
  	@item.update_attributes(:member_id => current_member.id, :checked_out => true)
  	redirect_to item_path(@item)
  end

  def return
  	@item = set_item
  	@item.update_attributes(:member_id => nil, :checked_out => false)
  	redirect_to member_path(current_member)
  end

  def destroy
    @item = set_item
    @item.delete
    redirect_to items_path 
  end


  private
  def set_item
  	@item = Item.find(params[:id])
  end

  def item_params
  	params.require(:item).permit(:name, :description, :container_id, :member_id, :checked_out, :item_image)
  end
end
