class Vehicle < ApplicationRecord
  has_many :vehicle_bookings

  validates :name, :vehicle_type, :seats,  presence: true
end
