class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(title: params[:post][:title], body: params[:post][:body])
    redirect_to posts_path
  end
end
