# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  title           :text
#  submission_date :date
#  created_at      :datetime
#  updated_at      :datetime
#  client_id       :integer
#

class Post < ActiveRecord::Base
	belongs_to :client
	validates_presence_of :title, :client_id, :submission_date
end
