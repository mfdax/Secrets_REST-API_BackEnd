class SecretsController < ApplicationController

  before_action :valid_api, only: [:create]

  def index
    @secrets = Secret.all.order("created_at desc").includes(:user).first(20) # latest 20 secrets
  end

  def create
    @secret = Secret.new params.require(:secret).permit(:content, :user_id)

    if @secret.save
      # good
      render :index, status: 201
    else
      # error message
      render json: {message: "Couldn't save new secret. :/"}, status: 422
    end
  end

  def show
    @mysecrets = Secret.find_by(user_id: params[:user_id])
  end

end
