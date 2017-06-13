class HotelBooking < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_bookings do |t|
      t.references :hotel, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :occupied_rooms

      t.timestamps
    end
  end
end
