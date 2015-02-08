class CreateDeejays < ActiveRecord::Migration
  def change
    create_table :deejays do |t|
      t.string :name
      t.text :description
      t.string :soundcloud

      t.timestamps null: false
    end
  end
end
