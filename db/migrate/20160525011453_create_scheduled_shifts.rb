class CreateScheduledShifts < ActiveRecord::Migration
  def change
    create_table :scheduled_shifts do |t|
      t.belongs_to :user
      t.belongs_to :shift
      
      t.timestamps null: false
    end
  end
end
