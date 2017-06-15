class HotelTour < ApplicationRecord
  belongs_to :hotel
  belongs_to :tour

  validates :hotel_id, uniqueness: {scope: :tour_id}
  validates :hotel_id, presence: true
  validates :tour_id, presence: true
end
