class User < ApplicationRecord
  has_many :subscriptions
  has_many :courses, through: :subscriptions
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
