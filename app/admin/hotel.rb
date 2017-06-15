ActiveAdmin.register Hotel do
  #belongs_to :tour
  permit_params :hotel_title, :hotel_body
end

ActiveAdmin.register Hotel do
  sidebar "Hotel Details", only: [:show, :edit, :update, :destroy] do
    ul do
      #li link_to "Hotel Booking",    admin_hotel_hotel_booking_path(resource)
    end
  end
end

ActiveAdmin.register Subhotel do
  belongs_to :hotel
  permit_params :hotel_date, :sub_note, :hotel_id
end

ActiveAdmin.register Hotel do

  form do |f|
    tabs do
      tab 'Details' do
    f.inputs 'Details' do
      f.input :hotel_title
      f.input :hotel_body
    end
    end
    end
    f.actions
    end
    end

    ActiveAdmin.register Hotel do
    show do
      tabs do
      tab 'Hotel Details' do
          simple_format hotel.hotel_title
          simple_format hotel.hotel_body
        end
        end
      panel "Hotel Booking" do
        hotel.hotel_bookings.each do |hotel_booking|
            li link_to "#{hotel_booking.start_date}", admin_hotel_booking_path(hotel_booking)
      end
    end
    end
    end
