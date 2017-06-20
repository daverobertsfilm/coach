class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :vehicle_type
      t.integer :seats

      t.timestamps
    end
  end
end
