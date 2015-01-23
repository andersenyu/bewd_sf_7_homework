class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :show
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
