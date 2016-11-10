class SurveysController < ApplicationController
  def new
  end

  def create
    if !(session[:times])
      session[:times]=0
    end
    session[:times]+=1
    # render text: "You have visited this url #{session[:times]} times"
    flash[:submits] = "You have submitted this form #{session[:times]} times."
  end
end
