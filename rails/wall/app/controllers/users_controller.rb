class UsersController < ApplicationController
  before_action :require_login, except: [:index, :register, :login]

  def index
  end

  def register

    user = User.new(user_params)
    if user.valid?
      user.save
      session[:first_name]=user.first_name
      session[:user_id]=user.id
      redirect_to '/wall'
    else
      flash[:errors]=user.errors.full_messages
      redirect_to "/"
    end
  end

  def login
    #see if email exists
    user = User.find_by_email(params[:user][:email])
    if !user
      flash[:log_errors] = "Your username or password is invalid"
      redirect_to '/'
    else
      # check the password matches
      if user.authenticate(params[:user][:password])
        session[:first_name]=user.first_name
        session[:user_id]=user.id
        redirect_to '/wall'
      else
        flash[:log_errors] = "Your username or password is invalid"
        redirect_to '/'
      end
    end
    #if the email doesn't exist, redirect
    #check the password
    #if password doesn't match, redirect
  end

  def wall
    @messages = Message.all.reverse

  end

  def logout
    reset_session
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
