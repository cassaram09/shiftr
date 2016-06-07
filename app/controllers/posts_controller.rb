class PostsController < ApplicationController

  def index
    @posts = Post.all
    @users = User.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @posts }
    end
  end

  def new
    @post = Post.new
    @post.tags.build
  end

  def create
    @post = Post.create(post_params)
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post, status: 201 }
    end
    
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @post }
    end
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
