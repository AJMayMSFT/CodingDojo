Rails.application.routes.draw do
  root :to=> 'surveys#index'
  post '/surveys/result' => 'surveys#result'

  # get 'surveys/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
