class AddPhotoUrlToDeejay < ActiveRecord::Migration
  def change
    add_column :deejays, :photo_url, :string
  end
end
