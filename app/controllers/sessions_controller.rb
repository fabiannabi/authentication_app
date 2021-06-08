class SessionsController < ApplicationController
  # The try authenticate  is a build in method after setting the password_digest

  def create
    user = User
           .find_by(email: params['user']['email'])
           .try(:authenticate, params['user']['password'])

    # Communicate with the session_store to the cookie
    if user
      session['user_id'] = user.id
      render json: { status: :created, logged_in: true, user: user }
    else
      render json: { status: 401 }
    end
  end
end
