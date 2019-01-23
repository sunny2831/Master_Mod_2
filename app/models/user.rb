class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :username, uniqueness: true
  has_secure_password 
end
