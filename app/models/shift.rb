class Shift < ActiveRecord::Base
  has_many :scheduled_shifts
  has_many :schedules, through: :scheduled_shifts
end
