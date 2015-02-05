class AddProviderUpdateToEtsyItems < ActiveRecord::Migration
  def change
    add_column :etsy_items, :provider_update_to, :datetime
  end
end
