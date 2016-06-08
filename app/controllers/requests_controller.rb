class RequestsController < ApplicationController
  respond_to :html, :js, :json

  def new
    @user = User.find(current_user.id)
    @request = Request.find_or_create_by(user_id: @user.id)
    @shifts = Shift.all
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to user_request_path(current_user.id, @request)
  end

  def show
    @user = current_user
    @request = Request.find_by_id(params[:id])
    respond_with @request
  end

  def edit
    @user = User.find(current_user.id)
    @request = Request.find_by(user_id: @user.id)
  end

  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(request_params)
      redirect_to user_request_path(current_user.id, @request)
    else
      render 'edit'
    end
  end

  private
  def request_params
    params.require(:request).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :user_id)
  end

end
