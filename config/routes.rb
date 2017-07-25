Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'hikes#index'
  resources :hikes

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'


end
