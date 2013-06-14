# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  site_url   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Site < ActiveRecord::Base
  attr_accessible :name, :site_url, :team_id

  belongs_to :team
  has_many :feeds
end
