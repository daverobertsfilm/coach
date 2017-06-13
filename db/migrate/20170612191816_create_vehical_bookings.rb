class CreateVehicalBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :vehical_bookings do |t|
      t.references :vehical, foreign_key: true
      t.date :start_data
      t.date :end_date
      t.integer :occupied_seats

      t.timestamps
    end
  end
end
