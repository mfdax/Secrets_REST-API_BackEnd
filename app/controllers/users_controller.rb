class UsersController < ApplicationController

  def create
    @user = User.new params.require(:user).permit(:email, :name, :password, :password_confirmation)
    @user.key = SecureRandom.hex(8) # generate key and save it

    if @user.save
      render status: 201
    else
      render json: {message: @user.errors}, status: 422
    end
  end

end
