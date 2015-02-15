class AddRecordLabelToArtists < ActiveRecord::Migration
  def change
  	add_column :artists, :label_id, :integer

  end
end
