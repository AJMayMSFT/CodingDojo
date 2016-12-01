class SurveysController < ApplicationController
  def index
  end

  def result
    if (!session[:times])
      session[:times] = 1
    else
      session[:times] += 1
    end

    flash[:message] = "You've submitted the forms #{session[:times]} times."
  end

end
