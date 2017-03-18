ActiveAdmin.register Subtour

ActiveAdmin.register Subtour do
  permit_params :departure_date, :sub_note, :tour_id, :hotel_id, :subhotel_id
end

ActiveAdmin.register Subtour do

  form decorate: true do |f|
    tabs do
      tab 'Details' do
    f.inputs 'Details' do
      f.input :departure_date
      f.input :sub_note
      f.input :tour_id
      f.input :hotel_id, as: :select, collection: Hotel.all
      f.input :subhotel_id, as: :select, collection: Subhotel.all
    end
    end
    end
    f.actions
    end
end
