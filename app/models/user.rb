class User < ApplicationRecord
  has_secure_password
  validates :name, :password_digest, presence: true
  validates :email, uniqueness: true
  has_many :galleries


end
