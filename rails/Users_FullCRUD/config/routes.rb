Rails.application.routes.draw do
  root 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/edit/:id' => 'users#edit'
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
