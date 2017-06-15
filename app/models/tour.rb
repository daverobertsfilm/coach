# == Schema Information
#
# Table name: tours
#
#  id                             :integer          not null, primary key
#  title                          :string
#  body                           :text
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  tour_itinerary                 :text
#  tour_inclusions                :text
#  tour_ticket_notes              :string
#  tour_notes                     :string
#  tour_important_notes           :text
#  tour_destination               :string
#  tour_status                    :string
#  tour_type                      :string
#  tour_nights                    :integer
#  tour_balance_due_in_days       :integer
#  tour_booking_deposit           :integer
#  tour_seat_numbers_on           :boolean          default(TRUE)
#  tour_mystery_tour              :boolean          default(FALSE)
#  tour_passport_required         :boolean          default(FALSE)
#  tour_self_drive_available      :boolean          default(TRUE)
#  tour_not_for_external_agents   :boolean          default(FALSE)
#  tour_tickets_included_in_fare  :boolean          default(TRUE)
#  tour_margin_scheme_vat_applies :boolean          default(FALSE)
#  tour_allow_agent_web_discounts :boolean          default(FALSE)
#  tour_requires_own_insurance    :boolean          default(FALSE)
#  tour_on_web_sale               :boolean          default(TRUE)
#  tour_web_desposits_allowed     :boolean          default(TRUE)
#  tour_pick_seats_online         :boolean          default(TRUE)
#  tour_insurance_available       :boolean          default(TRUE)
#  tour_insurance_inclusive       :boolean          default(FALSE)
#  tour_insurance_vat_applies     :boolean          default(TRUE)
#

class Tour < ApplicationRecord
  has_many :subtours
  has_many :hotel_tours
  has_many :hotels, through: :hotel_tours
  accepts_nested_attributes_for :subtours

end
