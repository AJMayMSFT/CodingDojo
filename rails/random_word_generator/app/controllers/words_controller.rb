class WordsController < ApplicationController
  def index
    prng = Random.new
    @word = prng.rand(10000)
    if !(session[:attempt])
      session[:attempt] = 1
    else
      session[:attempt]+=1
    end
  end

end
