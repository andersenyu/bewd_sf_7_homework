class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|

      t.timestamps null: false

      t.string :title
      t.string :picture_link
      t.integer :artist_id


    end
  end
end
