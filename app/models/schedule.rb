class Schedule < ActiveRecord::Base
  has_many :scheduled_shifts
  has_many :shifts, through: :scheduled_shifts
  belongs_to :user

  def add_shift(shift_id)
    scheduled_shift = scheduled_shifts.find_by(scheduled_shift_id: scheduled_shift_id) 
  end
end
