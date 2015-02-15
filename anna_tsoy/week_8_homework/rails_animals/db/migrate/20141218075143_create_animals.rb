class CreateAnimals < ActiveRecord::Migration #inheriting CreateAnimals class from active record
  def change
    create_table :animals do |t|
      t.string :name
      t.string :size

      t.timestamps
    end
  end
end
