class Deejay < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader

  validates_presence_of :name, :description, :email
end
