class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :hotel_title
      t.text :hotel_body

      t.timestamps
    end
  end
end
