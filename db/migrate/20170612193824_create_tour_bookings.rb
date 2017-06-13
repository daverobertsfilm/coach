class CreateTourBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :tour_bookings do |t|
      t.references :tour, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
