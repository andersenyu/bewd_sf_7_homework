class AddGenreToArtists < ActiveRecord::Migration
  def change
    change_column :artists, :genre_id, :integer
    remove_column :artists, :integer
  end
end
