class User < ApplicationRecord
  has_secure_password
  # has_many :posts
  has_many :posts, class_name: "Post", foreign_key: "saito_id"
end
