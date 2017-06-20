class CreateVehicleBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_bookings do |t|
      t.integer :vehicle_id
      t.date :start_date
      t.date :end_date
      t.integer :occupied_seats

      t.timestamps
    end
  end
end
