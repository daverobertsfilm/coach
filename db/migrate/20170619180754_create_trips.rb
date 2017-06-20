class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.integer :tour_booking_id
      t.integer :hotel_booking_id
      t.integer :vehicle_booking_id
      t.integer :seats

      t.timestamps
    end
  end
end
