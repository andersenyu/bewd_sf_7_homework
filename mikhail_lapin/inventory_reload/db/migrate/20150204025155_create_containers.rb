class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|

      t.timestamps null: false
      t.string :name
    end
  end
end
