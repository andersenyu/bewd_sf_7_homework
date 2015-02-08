class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :description
      t.references :deejay, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :deejays
  end
end
