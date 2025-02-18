module Posts
  class LikesController < ApplicationController
    include ActionView::RecordIdentifier
    before_action :set_post
    def create
      @post.likes.find_or_create_by(user_id: current_user.id)
      render turbo_stream: turbo_stream.update(dom_id(@post, :like), partial: "feed/like",
        locals: { post: @post, user: current_user })
    end

    def destroy
      @post.likes.where(user_id: current_user.id).destroy_all
      render turbo_stream: turbo_stream.update(dom_id(@post, :like), partial: "feed/like",
        locals: { post: @post, user: current_user })
    end
  private
    def set_post
      @post = Post.find(params[:post_id])
    end
  end
end