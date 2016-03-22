class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # def restrict_access
  #   authenticate_or_request_with_http_token do |token, options|
  #     ApiKey.exists?(access_token: token)
  #   end
  # end
end