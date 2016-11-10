Rails.application.routes.draw do
  root 'surveys#new'
  get 'surveys/new'
  get 'surveys/create'
  post 'surveys/' => 'surveys#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
