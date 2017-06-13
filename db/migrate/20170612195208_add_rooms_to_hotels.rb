class AddRoomsToHotels < ActiveRecord::Migration[5.0]
  def change
    add_column :hotels, :rooms, :integer
  end
end
