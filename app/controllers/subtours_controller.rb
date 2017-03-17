class SubtoursController < ApplicationController

  def create
    @tour = Tour.find(params[:tour_id])
    @subtour = @tour.subtours.create(params[:subtour].permit(:departure_date, :sub_note, :tour_id))
     redirect_to tour_path(@subtour.tour)
end

def subtour_params
  params.require(:subtour).permit(:departure_date, :sub_note, :tour_id)
end

def show
@subtour = Subtour.find(params[:id])
end

end
