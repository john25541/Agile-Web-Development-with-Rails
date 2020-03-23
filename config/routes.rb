Rails.application.routes.draw do
  resources :orders
  resources :line_items

  resources :carts

  resources :products do
    get :who_bought, on: :menber
  end
  resources :stores
  root 'stores#index'
end
