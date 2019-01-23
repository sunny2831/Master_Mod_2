class User < ApplicationRecord
  has_many :comments
  has_many :posts
  validates :username, uniqueness: true
  has_many :sent_messages, :class_name => 'Message', :foreign_key => 'sender_id'
  has_many :received_messages, :class_name => 'Message', :foreign_key => 'receiver_id'
  has_secure_password
end
