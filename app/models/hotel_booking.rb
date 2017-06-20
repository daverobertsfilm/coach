class HotelBooking < ApplicationRecord
  belongs_to :hotel
  has_many :trips
  validates :hotel_id, :start_date, :end_date, :occupied_rooms,  presence: true

end
