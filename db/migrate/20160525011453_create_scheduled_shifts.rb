class CreateScheduledShifts < ActiveRecord::Migration
  def change
    create_table :scheduled_shifts do |t|

      t.timestamps null: false
    end
  end
end
