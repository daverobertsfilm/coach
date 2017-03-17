class CreateSubtours < ActiveRecord::Migration[5.0]
  def change
    create_table :subtours do |t|
      t.date :departure_date
      t.text :sub_note
      t.references :tour, index: true, foreign_key: true

      t.timestamps
    end
  end
end
