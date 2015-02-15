# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  author     :string(255)
#  title      :string(255)
#  genre      :string(255)
#  available  :boolean
#  rating     :integer
#  created_at :datetime
#  updated_at :datetime
#  url_image  :string(255)
#

class Book < ActiveRecord::Base
end
