class Artist < ActiveRecord::Base
	has_many :tracks
	belongs_to :record_label
	belongs_to :genre
	validates_presence_of :name
	validates_uniqueness_of :name
	#validates_presence_of :record_label_id
end
