class AddRecordlabelToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :record_label_id, :string
    add_column :artists, :integer, :string
  end
end
