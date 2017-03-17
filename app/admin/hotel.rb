ActiveAdmin.register Hotel do
  permit_params :hotel_title, :hotel_body
end

ActiveAdmin.register Hotel do
  sidebar "Project Details", only: [:show, :edit, :update, :destroy] do
    ul do
      li link_to "Subhotels",    admin_hotel_subhotels_path(resource)
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
      panel "Subhotels" do
        hotel.subhotels.each do |subhotel|
            li link_to "#{subhotel.hotel_date}", admin_hotel_subhotel_path(hotel, subhotel)
      end
    end
    end
    end
