class User < ApplicationRecord
  has_secure_password
  has_many :events

  validates :username, :email, :password, presence: true
end
