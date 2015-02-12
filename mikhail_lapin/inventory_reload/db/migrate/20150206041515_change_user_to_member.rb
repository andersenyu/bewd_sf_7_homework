class ChangeUserToMember < ActiveRecord::Migration
  def change
  	rename_column :items, :user_id, :member_id
  end
end
