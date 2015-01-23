class RemoveRecordLabelIdFromArtists < ActiveRecord::Migration
  def up
    remove_column :tracks, :record_label_id
  end
end
