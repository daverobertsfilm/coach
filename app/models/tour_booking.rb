class TourBooking < ApplicationRecord
  belongs_to :tour
  has_many :trips

  validates :tour_id, :start_date, :end_date,  presence: true
end
