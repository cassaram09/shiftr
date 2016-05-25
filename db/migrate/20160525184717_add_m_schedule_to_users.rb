class AddMScheduleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :m_schedule, :string
  end
end
