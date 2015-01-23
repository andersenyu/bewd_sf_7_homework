class AddArtistToTracks < ActiveRecord::Migration
  def change
  	#add column to :table called tracks, with column named :artist_id which will have an data type of integer
    add_column :tracks, :artist_id, :integer
  end
end
