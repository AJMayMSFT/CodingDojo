class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def create
    # User.create(params[:user])
    User.create(user_params)
    redirect_to '/users'
  end

  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
   params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end

end