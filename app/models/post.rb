class Post < ApplicationRecord
  belongs_to :user
  belongs_to :user, class_name: "User", foreign_key: "saito_id"
end
