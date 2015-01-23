class AddArtistIdToTracks < ActiveRecord::Migration
  def change
  	add_column :tracks, :label_id, :integer

  end
end
