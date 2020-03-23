Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts

  root 'stores#index'

  resources :products do
    get :who_bought, to:  :menber
  end
end
