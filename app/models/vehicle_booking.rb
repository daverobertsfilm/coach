class VehicleBooking < ApplicationRecord
  belongs_to :vehicle
  has_many :trips

  validates :vehicle_id, :start_date, :end_date, :occupied_seats,  presence: true
end
