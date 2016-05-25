class AddWScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :w_schedule, :string
  end
end
