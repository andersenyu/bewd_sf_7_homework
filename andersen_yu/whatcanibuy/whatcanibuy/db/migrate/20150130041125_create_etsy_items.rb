class CreateEtsyItems < ActiveRecord::Migration
  def change
    create_table :etsy_items do |t|
      t.integer :listing_id
      t.text :title
      t.text :description
      t.integer :price
      t.integer :quantity
      t.text :url
      t.integer :views
      t.integer :num_favorers

      t.timestamps
    end
  end
end
