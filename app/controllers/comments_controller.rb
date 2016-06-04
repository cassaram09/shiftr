class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to posts_path
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

end
