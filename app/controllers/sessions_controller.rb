class SessionsController < ApplicationController
  def create
    email = params[:email]
    password = params[:password]

    @user = User.find_by email: email

    if (@user) && (@user.authenticate password)
      # No need to anything here, everything's good
      render status: 200
    else
      # send error message as json
      render json: {message: "Couldn't log you in bro - api:/"}, status: 422
    end
  end

end
