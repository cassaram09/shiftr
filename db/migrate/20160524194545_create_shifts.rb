class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :day
      t.string :time
      t.string :location
      t.string :role

      t.timestamps null: false
    end
  end
end
