class AddTScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :t_schedule, :string
  end
end
