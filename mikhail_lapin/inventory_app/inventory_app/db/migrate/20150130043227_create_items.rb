class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.integer :container_id
      t.boolean :checked_out_id
      t.integer :user_checked_out

      t.timestamps null: false
    end
  end
end
