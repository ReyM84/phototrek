Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :hikes

  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destory]

  get '/login', to: 'sessions#new'





end
