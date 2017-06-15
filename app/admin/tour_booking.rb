ActiveAdmin.register TourBooking do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :tour_id, :start_date, :end_date
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs do
      f.input :tour_id, :label => 'Tour', :as => :select, :collection => Tour.all.map{|t| ["#{t.title}", t.id]}
      f.input :start_date
      f.input :end_date
      f.actions
    end
  end
end
