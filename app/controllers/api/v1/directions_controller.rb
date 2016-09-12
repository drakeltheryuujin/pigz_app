module Api
  module V1
    class DirectionsController < BaseController
      def route
        binding.pry

        render json: Direction.new(origin, destination).route
      end

      private

      def origin
        Location.new(params[:origin_lat], params[:origin_lng])
      end

      def destination
        Location.new(params[:destination_lat], params[:destination_lng])
      end
    end
  end
end
