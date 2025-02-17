class FeedController < ApplicationController
  def show
    new_posts = Post.where.not(id: current_user.viewed_posts.pluck(:id))
    @post = new_posts.sample
    @post.views.find_or_create_by(user_id: current_user.id) if @post
  end
end
