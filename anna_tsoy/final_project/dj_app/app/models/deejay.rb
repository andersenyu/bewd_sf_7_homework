class Deejay < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	validates_presence_of :name, uniqueness: true
	validates_presence_of :description, :email
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
		message: "Only email addresses allowed" }
end
