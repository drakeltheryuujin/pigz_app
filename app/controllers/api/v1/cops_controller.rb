module Api
  module V1
    class CopsController < BaseController
      skip_before_action :verify_content_type_header

      def create
        #when new cop is created, show push notification
      end
    end
  end
end
