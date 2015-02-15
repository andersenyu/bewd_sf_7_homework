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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
