class Shift < ActiveRecord::Base
  has_many :scheduled_shifts
  has_many :users, through: :scheduled_shifts
end
