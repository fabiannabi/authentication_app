class ApplicationController < ActionController::Base
  # CSRF token generetad from the sistem but with API,  you need to skip it
  skip_before_action :verify_authenticity_token

end
