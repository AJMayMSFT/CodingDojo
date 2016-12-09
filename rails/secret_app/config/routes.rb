Rails.application.routes.draw do

  root :to=> 'sessions#new'
  post 'login' => 'users#login'
  get 'users/new' => 'users#new'
  get 'secrets' => 'secrets#index'
  post 'register' => 'users#register'
  post 'logout' =>'users#logout'
  post 'like' => 'users#like'
  delete '/secrets/:id' => 'secrets#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
