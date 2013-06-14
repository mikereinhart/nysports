# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  logo_url     :string(255)
#  official_url :string(255)
#  twitter_url  :string(255)
#  facebook_url :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
