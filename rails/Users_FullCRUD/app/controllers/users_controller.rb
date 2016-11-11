class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    # puts params
    User.create(name:params[:name])
    redirect_to("/")
  end

  def show
    @user = User.find(params[:id])
  end
end
