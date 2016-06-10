class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    # render layout: false
    render json: @comments
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to @post
    else
      render 'posts/show'
    end
  end

  # def show
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.find(params[:id])
  #   respond_to do |format|
  #     format.html { render :show }
  #     format.json { render json: @comment }
  #   end
  # end

  # def edit
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.find(params[:id])
  # end

  # def update
  #   @comment = Comment.find(params[:id])
  #   @comment.update(comment_params)
  #   redirect_to posts_path
  # end

  private
  def comment_params
    params.require(:comment).permit(:body, :post_id, :user_id)
  end

end
