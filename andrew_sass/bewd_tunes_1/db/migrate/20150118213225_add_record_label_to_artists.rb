class AddRecordLabelToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :record_label_id, :integer
  end
end
