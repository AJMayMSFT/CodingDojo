Rails.application.routes.draw do
  root :to=> 'dojo#index'
  post 'home' => 'dojo#seattle'
  get 'dojo/index'

  get 'dojo/seattle'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
