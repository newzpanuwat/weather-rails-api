module Api
    module V1
        class LocationsController < ApiController
            before_action :set_location
            def show
                render json: {
                    id: @location.id,
                    name: @location.name,
                    current: @location.recordings.last
                }
            end

            private

                def set_location
                    @location = Location.find(params[:id])
                end
    
        end
        
    end
end

