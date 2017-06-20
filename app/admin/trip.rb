ActiveAdmin.register Trip do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :tour_booking_id, :hotel_booking_id, :vehicle_booking_id, :seats
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form partial: 'form'

  # form do |f|
  #   f.inputs "Member Details" do
  #     f.input :tour_booking_id, :label => 'Tour Booking', :as => :select, :collection => TourBooking.all.map{|t| ["#{t.tour.title} - #{t.start_date}", t.tour.id]}
  #     render 'some_partial'
  #   end
  #   f.button :Submit
  # end

  collection_action :booking_data, method: :get do
    @tour_booking = TourBooking.find(params[:tour_booking_id])
    @hotel_booking = HotelBooking.where(start_date: @tour_booking.start_date)
    @vehicle_booking = VehicleBooking.where(start_date: @tour_booking.start_date)
    if @hotel_booking.present? && @vehicle_booking.present?
      @trips = Trip.where(tour_booking_id: @tour_booking.id, hotel_booking_id: @hotel_booking.first.id, vehicle_booking_id: @vehicle_booking.first.id)
    end

    respond_to do |format|
      format.js
    end
  end

end
