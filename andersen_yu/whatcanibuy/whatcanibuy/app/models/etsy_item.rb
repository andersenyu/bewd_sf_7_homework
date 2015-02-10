# == Schema Information
#
# Table name: etsy_items
#
#  id                 :integer          not null, primary key
#  listing_id         :integer
#  title              :text
#  description        :text
#  price              :integer
#  quantity           :integer
#  url                :text
#  views              :integer
#  num_favorers       :integer
#  created_at         :datetime
#  updated_at         :datetime
#  provider_update_to :datetime
#  big_image_url      :text
#  small_image_url    :text
#

class EtsyItem < ActiveRecord::Base


	def self.search(search)
    if search
      self.where("price < ?", search)
    else
      self.all
    end
  end

end
