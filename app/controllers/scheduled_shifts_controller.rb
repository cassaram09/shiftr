class ScheduledShiftsController < ApplicationController
  
  def create
    @user = current_user
    if !schedule
      @user.schedule = Schedule.create(user_id: @user.id)
      scheduled_shift = @user.schedule.add_shift(params[:shift_id])
      scheduled_shift.save
    else
      scheduled_shift = @user.schedule.add_shift(params[:shift_id])
      scheduled_shift.save
    end
    redirect_to schedule_path(schedule)
  end
end
