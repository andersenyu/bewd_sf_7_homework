class CreateDeejays < ActiveRecord::Migration
  def change
    create_table :deejays do |t|
      t.string :name
      t.text :description
      t.string :twitter
      t.string :email
      t.string :soundcloud

      t.timestamps
    end
  end
end
