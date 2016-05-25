class AddRScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :r_schedule, :string
  end
end
