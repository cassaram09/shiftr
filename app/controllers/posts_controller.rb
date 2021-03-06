class PostsController < ApplicationController
  respond_to :html, :json, :js

  def index
    @posts = Post.all
    @users = User.all
    respond_with @posts
  end

  def new
    @post = Post.new
    @post.tags.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      respond_with @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
    respond_with @post
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, tag_ids: [], tags_attributes:[:name])
  end
  

end
