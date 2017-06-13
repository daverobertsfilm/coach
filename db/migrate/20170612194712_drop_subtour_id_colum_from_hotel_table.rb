class DropSubtourIdColumFromHotelTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :hotels, :subtour_id
  end
end
