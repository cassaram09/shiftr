class ShiftsController < ApplicationController
  before_action :find_shift, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js, :json

  def index
    @shifts = Shift.all
    respond_with @shifts
  end

  def new
    @shift = Shift.new
    respond_with @shift
  end

  def create
    @shift = Shift.create(shift_params)
    respond_with @shift
  end

  def show
    respond_with @shift
  end

  def edit
  end

  def update
    if @shift.update_attributes(shift_params)
      redirect_to @shift
    else
      render 'edit'
    end
  end

  def destroy
    @shift.destroy
    redirect_to shifts_path
  end

  private

  def shift_params
    params.require(:shift).permit(:role, :staff, :time, :day)
  end

  def find_shift
    @shift = Shift.find(params[:id])
  end
end