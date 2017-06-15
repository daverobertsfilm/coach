ActiveAdmin.register HotelTour do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :hotel_id, :tour_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# # end
#belongs_to :tour
#belongs_to :hotel

form do |f|
  f.inputs do
    f.input :tour_id, :label => 'Tour', :as => :select, :collection => Tour.all.map{|t| ["#{t.title}", t.id]}
    f.input :hotel_id, :label => 'Hotel', :as => :select, :collection => Hotel.all.map{|h| ["#{h.hotel_title}", h.id]}
    f.actions
  end
end

end
