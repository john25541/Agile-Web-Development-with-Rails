Rails.application.routes.draw do
  get 'stores/index'
  resources :products
  resources :stores
  root 'stores#index'
end
