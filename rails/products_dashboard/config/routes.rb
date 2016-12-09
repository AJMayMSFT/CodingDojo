Rails.application.routes.draw do

  root :to=> 'products#index'
  get 'products/new' => 'products#new'
  get 'products/:id/edit' => 'products#edit'
  get 'products/:id' => 'products#show'
  patch 'products/:id' => 'products#update'
  get 'products' => 'products#index'
  post 'products' => 'products#create'
  delete 'products/:id' => 'products#destroy'
  post 'products/:id/comment' => 'comments#create'
  get 'comments' => 'comments#index'


  get 'products/index'

  get 'products/show'



  get 'products/edit'

  get 'products/create'

  get 'products/update'

  get 'products/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
