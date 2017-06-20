class Trip < ApplicationRecord
  belongs_to :tour_booking
  belongs_to :hotel_booking
  belongs_to :vehicle_booking

  validates :tour_booking_id, :hotel_booking_id, :vehicle_booking_id, presence: true
end
