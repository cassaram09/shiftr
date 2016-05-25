class AddFScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :f_schedule, :string
  end
end
