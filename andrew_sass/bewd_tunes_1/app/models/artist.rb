# == Schema Information
#
# Table name: artists
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  profile_image   :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  record_label_id :integer
#

class Artist < ActiveRecord::Base
	belongs_to :record_label
	validates_presence_of :record_label, :name
end
