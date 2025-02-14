class FeedController < ApplicationController
  def show
    @posts = Post.all
  end
end
