ActiveAdmin.register HotelBooking do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :hotel_id, :start_date, :end_date, :occupied_rooms
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  #belongs_to :hotel

  form do |f|
    f.inputs do
      f.input :hotel_id, :label => 'Hotel', :as => :select, :collection => Hotel.all.map{|h| ["#{h.hotel_title}", h.id]}
      f.input :start_date
      f.input :end_date
      f.input :occupied_rooms
      f.actions
    end
  end
end
