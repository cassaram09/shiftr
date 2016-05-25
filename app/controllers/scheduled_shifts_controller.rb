class ScheduledShiftsController < ApplicationController
  
  def create
    if !schedule
      @user = current_user
      @user.schedule = Schedule.create(user_id: @user.id)
      scheduled_shift = @user.schedule.add_shift(params[:shift_id])
      scheduled_shift.save
    else
      @user = current_user
      scheduled_shift = @user.schedule.add_shift(params[:shift_id])
      scheduled_shift.save
    end
    redirect_to schedule_path(schedule)
  end
end
