class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
    @shifts = Shift.all
  end

  def show
    @user = User.find_by_id(params[:id])
    @shifts = Shift.all
  end

  def edit
    @user = User.find(params[:id])
    @shifts = Shift.all
    @request = Request.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :phone, :role, :rating, :avatar, :gender, shift_ids: [])
    end

end
