# == Schema Information
#
# Table name: labels
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Label < ActiveRecord::Base

	has_many :artists
	validates_presence_of :name
	validates_uniqueness_of :name

end

