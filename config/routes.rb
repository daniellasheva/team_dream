Rails.application.routes.draw do
  resources :elements
  resources :dreams
  resources :users

  root "sessions#new" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
