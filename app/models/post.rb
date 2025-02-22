class Post < ApplicationRecord
  belongs_to :user
  has_many :views, class_name: "Post::View"
  has_many :likes, class_name: "Post::Like"
  has_many :comments, class_name: "Post::Comment"
  
  has_one_attached :video
end
