class RemoveRecordLabelIdFromTracks < ActiveRecord::Migration
  def up
    remove_column :tracks, :record_label_id
  end

  def down
    add_column :tracks, :record_label_id, :integer
  end
end
