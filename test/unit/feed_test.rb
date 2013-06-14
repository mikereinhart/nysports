# == Schema Information
#
# Table name: feeds
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  summary      :text
#  feed_url     :string(255)
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class FeedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
