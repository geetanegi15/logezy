class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.time :start_time
      t.time :end_time
      t.integer :shift_name
      t.timestamps
    end
  end
end
