Rails.application.routes.draw do
  root 'rpg#index'

  post 'rpg/process' => 'rpg#whatevs'
  post 'rpg/reset' => 'rpg#reset'
  get '/rpg/reset' => 'rpg#reset'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
