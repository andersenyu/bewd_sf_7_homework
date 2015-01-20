class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :index
      t.string :show
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
