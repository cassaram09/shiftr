class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
