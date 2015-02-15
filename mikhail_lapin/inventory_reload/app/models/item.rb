# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  container_id :integer
#  user_id      :integer
#  checked_out  :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ActiveRecord::Base

	belongs_to :container
	belongs_to :member

	attachment :item_image
	
end
