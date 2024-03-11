# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders
  resources :price_settings
  resources :ingredients
  resources :pizzas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "orders#index"
end
