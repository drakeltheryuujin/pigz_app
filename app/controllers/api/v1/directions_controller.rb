module Api
  module V1
    class DirectionsController < BaseController
      def route
        render json: Direction.new(origin, destination).route
      end

      private

      def origin
        if params[:origin_lat]
          Location.new(params[:origin_lat], params[:origin_lng])
        else
          Location.new(40.729721, -73.997603)
        end
      end

      def destination
        if params[:route] == "ifc_center"
          Location.new(40.731140, -74.001495)
        elsif params[:route] == "comedy_cellar"
          Location.new(40.730133, -74.000480)
        else
          Location.new(params[:destination_lat], params[:destination_lng])
        end
      end
    end
  end
end
