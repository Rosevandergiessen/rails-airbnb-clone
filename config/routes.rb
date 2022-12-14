Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users
  resources :products, only: %i[index show new create edit update destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index show]
end
