class ShiftsController < ApplicationController
  before_action :find_shift, only: [:show, :edit, :update, :destroy]

  def index
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.save
    redirect_to @shift
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @shift }
    end
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