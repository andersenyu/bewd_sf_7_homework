class AddArtistIdToTracksFix < ActiveRecord::Migration
  def change

  	
  	remove_column :tracks, :label_id, :integer

  end
end
