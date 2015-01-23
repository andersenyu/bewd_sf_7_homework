# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base

	has_many :artists
	validates_presence_of :name
	validates_uniqueness_of :name

end

