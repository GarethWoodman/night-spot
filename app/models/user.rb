class User < ApplicationRecord
  has_secure_password
  has_many :events
  has_many :bookings

  validates :username, :email, :password, presence: true
end
