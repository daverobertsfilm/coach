class CreateSubhotels < ActiveRecord::Migration[5.0]
  def change
    create_table :subhotels do |t|
      t.date :hotel_date
      t.text :sub_note
      t.references :hotel, index: true, foreign_key: true

      t.timestamps
    end
  end
end
