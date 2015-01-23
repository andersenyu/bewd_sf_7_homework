# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  title      :string
#  track_link :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ActiveRecord::Base
	belongs_to :artist
end
