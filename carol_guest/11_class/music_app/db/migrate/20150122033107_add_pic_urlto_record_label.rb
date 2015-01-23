class AddPicUrltoRecordLabel < ActiveRecord::Migration
  def change
  	add_column :record_labels, :pic_url, :string
  end
end
