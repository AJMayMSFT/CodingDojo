class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def new
  end
  def create
    @user = User.create(name: params[:name])
    render json: @user
  end
  def show
    #render text: 'show method'
    render json: User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def total
    # render text: 'total method'
    render text: "There are #{User.all.count} records."
  end
end
