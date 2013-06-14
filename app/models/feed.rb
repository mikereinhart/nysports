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

class Feed < ActiveRecord::Base
  attr_accessible :feed_url, :name, :published_at, :summary, :site_id

  has_and_belongs_to_many :users
  belongs_to :site

end
