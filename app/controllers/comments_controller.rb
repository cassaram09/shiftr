class CommentsController < ApplicationController

  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
    # render layout: false
    render json: @comments
  end

  # def new
  #   @post = Post.find(params[:post_id])
  #   @comment = Comment.new
  # end

  # def create
  #   @comment = Comment.new(comment_params)
  #   respond_to do |format|
  #     if @comment.save
  #       format.html { redirect_to @comment.post, notice: 'Comment was successfully created.' }
  #       format.js   { }
  #       format.json { render json: @comment, status: :created, location: @comment }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @comment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

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

  # private
  # def comment_params
  #   params.require(:comment).permit(:body, :post_id, :user_id)
  # end

end
