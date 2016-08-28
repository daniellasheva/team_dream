Rails.application.routes.draw do

  post '/dreams/element_quantities', to: 'dreams#add_element_form', as: 'element_quantity_path'

  resources :elements
  resources :dreams
  resources :users

  root "sessions#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
