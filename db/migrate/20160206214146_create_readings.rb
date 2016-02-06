class CreateReadings < ActiveRecord::Migration
  # axis_x - Measurement of Axis X from Accelerometer
  # axis_y - Measurement of Axis Y from Accelerometer
  # axis_z - Measurement of Axis Z from Accelerometer
  def change
    create_table :readings do |t|
    t.float :axis_x
    t.float :axis_y
    t.float :axis_z
    t.timestamps
    end
  end
end