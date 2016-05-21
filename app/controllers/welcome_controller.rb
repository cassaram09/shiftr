class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
    # @admin ||= nil
  end

  def create
    @admin = params[:admin]
    flash[:notice] = @admin
    redirect_to welcome_index_url
  end

end
