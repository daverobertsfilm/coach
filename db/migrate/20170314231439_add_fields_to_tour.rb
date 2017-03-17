class AddFieldsToTour < ActiveRecord::Migration[5.0]
  def change
add_column :tours, :tour_itinerary, :text
add_column :tours, :tour_inclusions, :text
add_column :tours, :tour_ticket_notes, :string
add_column :tours, :tour_notes, :string
add_column :tours, :tour_important_notes, :text
add_column :tours, :tour_destination , :string
add_column :tours, :tour_status, :string
add_column :tours, :tour_type, :string
add_column :tours, :tour_nights, :integer
add_column :tours, :tour_balance_due_in_days, :integer
add_column :tours, :tour_booking_deposit, :integer
add_column :tours, :tour_seat_numbers_on, :boolean, default: true
add_column :tours, :tour_mystery_tour, :boolean, default: false
add_column :tours, :tour_passport_required, :boolean, default: false
add_column :tours, :tour_self_drive_available, :boolean, default: true
add_column :tours, :tour_not_for_external_agents, :boolean, default: false
add_column :tours, :tour_tickets_included_in_fare, :boolean, default: true
add_column :tours, :tour_margin_scheme_vat_applies, :boolean, default: false
add_column :tours, :tour_allow_agent_web_discounts, :boolean, default: false
add_column :tours, :tour_requires_own_insurance, :boolean, default: false
add_column :tours, :tour_on_web_sale, :boolean, default: true
add_column :tours, :tour_web_desposits_allowed, :boolean, default: true
add_column :tours, :tour_pick_seats_online, :boolean, default: true
add_column :tours, :tour_insurance_available, :boolean, default: true
add_column :tours, :tour_insurance_inclusive, :boolean, default: false
add_column :tours, :tour_insurance_vat_applies, :boolean, default: true
  end
end
