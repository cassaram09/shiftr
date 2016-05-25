class AddDScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :d_schedule, :string
  end
end
