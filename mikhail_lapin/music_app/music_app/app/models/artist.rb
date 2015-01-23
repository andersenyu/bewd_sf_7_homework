# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  pic_url    :string
#  label_id   :integer
#  genre_id   :integer
#

class Artist < ActiveRecord::Base

	has_many :tracks
	belongs_to :label
	belongs_to :genre

end
