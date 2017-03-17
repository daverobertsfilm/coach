class TourStatusesController < InheritedResources::Base

  private

    def tour_status_params
      params.require(:tour_status).permit(:name)
    end
end

