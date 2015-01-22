class Artist < ActiveRecord::Base
	has_many :tracks, dependent: :destroy
	belongs_to :record_label
	belongs_to :genre

	validates_presence_of :name

	def self.search(search)
    if search
      self.where("name like ?", "%#{search}%")
    else
      self.all
    end
  end
end

