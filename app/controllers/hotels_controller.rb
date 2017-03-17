class HotelsController < ApplicationController

  def index
  @hotels = Hotel.all
end

def create
  end

def show
@hotel = hotel.find(params[:id])
end

end
