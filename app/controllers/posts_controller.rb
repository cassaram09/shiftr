class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.tags.build
  end

  def create
    @post = Post.create!(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
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
