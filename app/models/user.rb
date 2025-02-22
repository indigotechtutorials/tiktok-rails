class User < ApplicationRecord
  extend FriendlyId
  friendly_id :username, use: :slugged
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :views, class_name: "Post::View"
  has_many :viewed_posts, through: :views, source: :post
  has_many :likes, class_name: "Post::Like"
  has_many :comments, class_name: "Post::Comment"

  has_one_attached :avatar do |attachable|
    attachable.variant :navbar, resize_to_fill: [200, 200]
    attachable.variant :profile, resize_to_fill: [400, 400]
  end
end
