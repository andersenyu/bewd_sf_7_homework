# == Schema Information
#
# Table name: record_labels
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class RecordLabel < ActiveRecord::Base
	has_many :artists
end
