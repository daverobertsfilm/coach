class ToursController < ApplicationController

  def index
  @tours = Tour.all
end

def create
  end

def show
@tour = Tour.find(params[:id])
@subtour = Subtour.new
@subtour.id = @tour.id
end

end
