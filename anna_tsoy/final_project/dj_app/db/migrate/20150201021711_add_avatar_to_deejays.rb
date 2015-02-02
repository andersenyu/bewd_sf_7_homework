class AddAvatarToDeejays < ActiveRecord::Migration
  def change
    add_column :deejays, :avatar, :string
  end
end
