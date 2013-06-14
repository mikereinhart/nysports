# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password

  has_and_belongs_to_many :teams
  has_and_belongs_to_many :feeds

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length { in: 5..20 }
end
