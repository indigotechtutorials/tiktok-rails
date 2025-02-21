class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :video
  has_many :views, class_name: "Post::View"
  has_many :likes, class_name: "Post::Like"
  has_many :comments, class_name: "Post::Comment"
end
