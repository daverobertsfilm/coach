class UpdateLinks < ActiveRecord::Migration[5.0]
  def change
    add_reference :subtours, :hotel, foreign_key: true
    add_reference :subtours, :subhotel, foreign_key: true
    add_reference :subhotels, :subtour, foreign_key: true
    add_reference :hotels, :subtour, foreign_key: true
  end
end
