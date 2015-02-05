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

require 'test_helper'

class EtsyItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
