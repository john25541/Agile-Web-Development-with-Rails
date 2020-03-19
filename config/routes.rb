Rails.application.routes.draw do
  resources :line_items

  resources :carts

  resources :products

  resources :stores
  root 'stores#index'
end
