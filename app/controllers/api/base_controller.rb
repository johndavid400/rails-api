include ActionController::HttpAuthentication::Token::ControllerMethods
module Api
  class BaseController < ::ApplicationController
    TOKEN = "secret"
    # before_action :verify_key

    private
    def verify_key
      authenticate_or_request_with_http_token do |token, options|
        return return_error unless ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
      end
    end

    def return_error
      render json: {error: 'Sup'}, :status => :unauthorized
    end
  end
end