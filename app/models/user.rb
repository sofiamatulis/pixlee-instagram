class User < ApplicationRecord
  has_secure_password
  has_many :galleries
  validates :name, :password_digest, presence: true
  validates :email, uniqueness: true
end


#  a user can have many galleries , to create an account he must have a password and the email has to be unique
