class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.string :role
      t.integer :staff
      t.string :day
      t.string :time

      t.timestamps null: false
    end
  end
end
