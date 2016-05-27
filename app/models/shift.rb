class Shift < ActiveRecord::Base
  has_many :scheduled_shifts
  has_many :users, through: :scheduled_shifts

  def add_shift(shift_id)
    scheduled_shift = scheduled_shift.find_by(shift_id: shift_id) 
    if !scheduled_shift
      scheduled_shift = self.scheduled_shifts.build(shift_id: shift_id)
    end
    scheduled_shift
  end
end
