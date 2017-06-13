class CreateHotelTours < ActiveRecord::Migration[5.0]
  def change
    create_table :hotel_tours do |t|
      t.references :hotel, foreign_key: true
      t.references :tour, foreign_key: true

      t.timestamps
    end
  end
end
