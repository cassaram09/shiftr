class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(params[:user])
  end

  def edit
    @user = User.find_by(params[:user])
    
  end

end
