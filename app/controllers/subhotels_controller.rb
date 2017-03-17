class SubhotelsController < ApplicationController

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @subhotel = @hotel.subhotels.create(params[:subhotel].permit(:hotel_date, :sub_note, :hotel_id))
     redirect_to hotel_path(@subhotel.hotel)
end

def subhotel_params
  params.require(:subhotel).permit(:hotel_date, :sub_note, :hotel_id)
end

def show
@subhotel = subhotel.find(params[:id])
end

end
