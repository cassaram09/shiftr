class RequestsController < ApplicationController

  def new
    @request = Request.new
    @user = User.find(current_user.id)
    @shifts = Shift.all
  end

  def create
    binding.pry
    @request = Request.new(request_params)
    @request.save
    redirect_to @request
  end

  def show
  end

  private
  def request_params
    params.require(:request).permit(user_ids: [])
  end

end
