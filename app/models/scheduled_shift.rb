class ScheduledShift < ActiveRecord::Base
  belongs_to :shift
  belongs_to :schedule
end
