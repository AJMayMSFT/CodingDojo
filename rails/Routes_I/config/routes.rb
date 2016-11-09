Rails.application.routes.draw do
  # get 'say/index'
  root 'say#index'
  get 'say/hello'
  get '/times/' => 'say#times'
  get '/times/restart' => 'say#restart'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
