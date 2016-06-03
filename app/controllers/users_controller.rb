class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :find_shifts, only: [:index, :show, :edit]
  
  def index
    @users = User.all
  end

  def show
  end

  def edit
    @request = Request.new
  end

  def update
    if @user.role != params[:user][:role]
      @user.shifts.clear
    end
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :role, :rating, :avatar, :gender, shift_ids: [])
  end

  def find_user
    @user = User.find(params[:id])
  end

  def find_shifts
    @shifts = Shift.all
  end
end
