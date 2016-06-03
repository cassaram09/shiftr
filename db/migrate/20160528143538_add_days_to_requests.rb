class AddDaysToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :monday, :string
    add_column :requests, :tuesday, :string
    add_column :requests, :wednesday, :string
    add_column :requests, :thursday, :string
    add_column :requests, :friday, :string
    add_column :requests, :saturday, :string
    add_column :requests, :sunday, :string
  end
end
