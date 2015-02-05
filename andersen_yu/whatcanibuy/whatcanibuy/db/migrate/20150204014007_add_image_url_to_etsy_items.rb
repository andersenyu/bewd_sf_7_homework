class AddImageUrlToEtsyItems < ActiveRecord::Migration
  def change
    add_column :etsy_items, :image_url, :text
  end
end
