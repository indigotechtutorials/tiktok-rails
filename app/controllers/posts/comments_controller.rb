module Posts
  class CommentsController < BaseController
    def index
    end

    def create
      @post.comments.create(user_id: current_user.id, body: params[:body])
      redirect_to post_comments_path(@post)
    end
  end
end