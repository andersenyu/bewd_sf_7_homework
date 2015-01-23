# == Schema Information
#
# Table name: tracks
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string
#  picture_link :string
#  artist_id    :integer
#

class Track < ActiveRecord::Base

	belongs_to :artist


end
