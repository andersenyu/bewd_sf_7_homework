class ChangeEtsyItemColumnName < ActiveRecord::Migration
  def change
  	rename_column :etsy_items, :image_url, :big_image_url
  	add_column :etsy_items, :small_image_url, :text
  end

end
