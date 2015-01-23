class Artist < ActiveRecord::Base
	has_many :tracks
	belongs_to :record_label
end
