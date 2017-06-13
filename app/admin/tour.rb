ActiveAdmin.register Tour do
  permit_params :title, :body, :tour_itinerary, :tour_inclusions, :tour_ticket_notes, :tour_notes, :tour_important_notes, :tour_type, :tour_destination, :tour_nights, :tour_balance_due_in_days, :tour_booking_deposit, :tour_seat_numbers_on, :tour_mystery_tour, :tour_passport_required, :tour_self_drive_available, :tour_not_for_external_agents, :tour_tickets_included_in_fare, :tour_margin_scheme_vat_applies, :tour_allow_agent_web_discounts, :tour_requires_own_insurance, :tour_on_web_sale, :tour_web_desposits_allowed, :tour_pick_seats_online, :tour_insurance_available, :tour_insurance_inclusive, :tour_insurance_vat_applies
end

ActiveAdmin.register Tour do
  index do
    selectable_column
    column "Title" do |tour|
    link_to tour.title, admin_tour_path(tour)
  end
    column :tour_type
    column :tour_nights
    actions
  end
end


ActiveAdmin.register Tour do
  filter :title
  filter :tour_type
  filter :tour_destination
  filter :tour_nights
  filter :tour_mystery_tour
  filter :tour_self_drive_available
end

ActiveAdmin.register Tour do
  sidebar "Project Details", only: [:show, :edit, :update, :destroy] do
    ul do
      li link_to "Subtours",    admin_tour_subtours_path(resource)
    end
  end
end

ActiveAdmin.register Subtour do
  belongs_to :tour
  permit_params :departure_date, :sub_note, :tour_id
end

ActiveAdmin.register Tour do
  decorate_with TourDecorator

  form decorate: true do |f|
    tabs do
      tab 'Details' do
        f.inputs 'Details' do
          f.input :title
          f.input :body
          f.input :tour_itinerary
          f.input :tour_inclusions
          f.input :tour_ticket_notes
          f.input :tour_notes
          f.input :tour_important_notes
        end
      end
      tab 'Status' do
        f.inputs 'Status' do
          f.input :tour_type, :as => :select, :collection => ["Inclusive Tour", "Day Trip", "Shuttle Bus", "Private Group", "Private Hire"]
          f.input :tour_destination
          f.input :tour_nights
          f.input :tour_balance_due_in_days
          f.input :tour_booking_deposit
        end
      end
      tab 'Checklist' do
        f.inputs 'Checklist' do
          f.input :tour_seat_numbers_on
          f.input :tour_mystery_tour
          f.input :tour_passport_required
          f.input :tour_self_drive_available
          f.input :tour_not_for_external_agents
          f.input :tour_tickets_included_in_fare
          f.input :tour_margin_scheme_vat_applies
          f.input :tour_allow_agent_web_discounts
          f.input :tour_requires_own_insurance
          f.input :tour_on_web_sale
          f.input :tour_web_desposits_allowed
          f.input :tour_pick_seats_online
          f.input :tour_insurance_available
          f.input :tour_insurance_inclusive
          f.input :tour_insurance_vat_applies
        end
      end
      tab 'Hotel' do
        f.inputs 'Hotel' do
          f.input :hotel_tours, as: :check_boxes, :collection => User.all.map{ |tech|  [tech.surname, tech.id] }
        end
      end
    end
    f.actions
  end
end


ActiveAdmin.register Tour do
  show do
    tabs do
      tab 'Overview' do
        div do
          simple_format tour.body
        end
      end

      tab 'Status' do
        attributes_table do
          row(:tour_type)
          row(:tour_destination)
          row(:tour_nights)
          row(:tour_balance_due_in_days)
          row(:tour_booking_deposit)
        end
      end
      tab 'Checklist' do
        attributes_table do
          row(:tour_seat_numbers_on)
          row(:tour_mystery_tour)
          row(:tour_passport_required)
          row(:tour_self_drive_available)
          row(:tour_not_for_external_agents)
          row(:tour_tickets_included_in_fare)
          row(:tour_margin_scheme_vat_applies)
          row(:tour_allow_agent_web_discounts)
          row(:tour_requires_own_insurance)
          row(:tour_on_web_sale)
          row(:tour_web_desposits_allowed)
          row(:tour_pick_seats_online)
          row(:tour_insurance_available)
          row(:tour_insurance_inclusive)
          row(:tour_insurance_vat_applies)
        end
      end
      panel "Subtours" do
        tour.subtours.each do |subtour|
          li link_to "#{subtour.departure_date}", admin_tour_subtour_path(tour, subtour)
        end
      end
    end
  end
end
