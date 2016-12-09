class SecretsController < ApplicationController
  def index
    @secrets = Secret.all
  end

  def destroy
    Secret.find(params[:secret_id]).destroy
    redirect_to '/secrets'
  end
end
