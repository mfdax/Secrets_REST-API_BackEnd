class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def authorized_user
    @current_user = User.find_by key: params[:user][:key] # IMPORTANT!

    if @current_user.nil?
      # render error message
      render json: {message: "Invalid user credentials :/"}, status: 401
    end
  end

  def valid_api
    # find token from the request headers
    # validate it with an if statement
    # throw error message if auth fails
    if request.headers["api-key"] != "sup3r53cure4p1k3y"
      render json: {message: "Invalid api key :/"}
      return false
    end
  end
end
