class HotelTour < ApplicationRecord
  belongs_to :hotel
  belongs_to :tour
end
