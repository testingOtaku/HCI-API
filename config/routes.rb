Rails.application.routes.draw do
  resources :menutags
  resources :dishes
  resources :tags
  resources :menus
  resources :branches
  resources :restaurants
  resources :cuisines
  resources :areas
  resources :cities
  resources :users
  resources :roles
  resources :auth
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
