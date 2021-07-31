module Api
  class BaseController < ::ApplicationController
    # This method will return unauthorized if the JWT is wrong, expired, or not signed correctly.
    # If everything is correct, it will set the current_user method for use elsewhere in your controllers/views
    before_action :authenticate_user!

    # TODO: if you stick with using the authenticate_user! method above, you can remove everything else
    #
    # include ActionController::HttpAuthentication::Token::ControllerMethods
    #
    # verify_key is not really needed since you are running :authenticate_user! to check the JWT and set current_user.
    # before_action :verify_key

    # private
    #
    # def verify_key
    #   authenticate_or_request_with_http_token do |token, options|
    #     # TODO use this line if you are doing API Key based authorization
    #     #return_error unless ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    #
    #     # TODO use this line if you are doing JWT based authorization
    #     jwt = decode_jwt(token)
    #     return_error unless jwt.present?
    #     # lookup/set user based on user_id found in JWT payload:
    #     @user =  User.find_by(id: jwt[0]['sub'])
    #   end
    # end
    #
    # def decode_jwt(token)
    #   # All this does is decode the Authorization header (ie. Bearer xxx) and make sure it is signed correctly
    #   JWT.decode(token, Devise::JWT.config[:secret], true)
    # rescue JWT::VerificationError => e
    #   # return false if signed incorrectly
    #   false
    # end
    #
    # def return_error
    #   render json: {error: 'Sup'}, :status => :unauthorized
    # end
  end
end
