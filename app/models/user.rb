class User < ApplicationRecord
  has_secure_password
  has_many :galleries
  validates :name, :password_digest, presence: true
  validates :email, uniqueness: true
end
