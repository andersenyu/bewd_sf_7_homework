# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  container_id :integer
#  user_id      :integer
#  checked_out  :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
