class AddSScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :s_schedule, :string
  end
end
