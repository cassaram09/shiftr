class AddDaysToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :monday, :string, default: "n/a"
    add_column :requests, :tuesday, :string, default: "n/a"
    add_column :requests, :wednesday, :string, default: "n/a"
    add_column :requests, :thursday, :string, default: "n/a"
    add_column :requests, :friday, :string, default: "n/a"
    add_column :requests, :saturday, :string, default: "n/a"
    add_column :requests, :sunday, :string, default: "n/a"
  end
end
