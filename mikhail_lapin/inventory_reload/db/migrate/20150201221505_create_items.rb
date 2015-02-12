class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :container_id
      t.integer :user_id
      t.boolean :checked_out

      t.timestamps null: false
    end
  end
end
