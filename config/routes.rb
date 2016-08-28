Rails.application.routes.draw do


  #get '/sessions/new', to: 'sessions#new', as: 'login'

  delete 'session', to: 'sessions#destroy'
  #get '/logout', to: "sessions#destroy", as: 'logout'
  resources :sessions
  resources :elements
  resources :dreams
  resources :users

  root "sessions#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
