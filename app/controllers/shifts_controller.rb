class ShiftsController < ApplicationController
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
    @shift = Shift.find(params[:id])
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
    if @shift.update_attributes(shift_params)
      redirect_to @shift
    else
      render 'edit'
    end
  end

  def destroy
    @shift = Shift.find(params[:id])
    @shift.destroy
    redirect_to shifts_path
  end

  private

  def shift_params
    params.require(:shift).permit(:role, :staff, :time, :day)
  end
end


  # create_table "shifts", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "type"
  #   t.integer  "staff"
  #   t.string   "day"
  #   t.string   "time"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end