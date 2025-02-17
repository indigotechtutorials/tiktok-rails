class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :video
  has_many :views, class_name: "Post::View"
end
