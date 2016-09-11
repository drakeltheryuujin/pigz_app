module Api
  module V1
    class CopsController < BaseController
      skip_before_action :verify_content_type_header
    end
  end
end
