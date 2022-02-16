Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants

  root to: "restaurants#index"
  # get "restaurants", to: "restaurants#index"
  # get 'restaurants/new', to: "restaurants#new"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"
end
