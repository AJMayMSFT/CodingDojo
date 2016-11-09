class SayController < ApplicationController
  def initialize
    #session[:times] = 0
  end

  def index
    render text: 'What do you want me to say???'
  end
  def hello
    render text: 'Saying hello'
  end
  def times
    if !(session[:times])
      session[:times]=0
    end
    session[:times]+=1
    render text: "You have visited this url #{session[:times]} times"
  end
  def restart
    session.clear
    render text: "Session was destroyed"
  end
end
