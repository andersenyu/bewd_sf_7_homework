class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|

      t.timestamps null: false

      t.string :name
      t.string :pic_url
    end
  end
end
