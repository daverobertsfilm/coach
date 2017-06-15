class TourBooking < ApplicationRecord
  belongs_to :tour

  validates :tour_id, :start_date, :end_date,  presence: true
end
