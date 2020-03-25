Rails.application.routes.draw do
  get 'admin' => 'admin#index'
    controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :orders
  resources :line_items
  resources :carts
  
  get 'stores/index', to: 'stores#index'

  root 'stores#index'

  resources :products do
    get :who_bought, to:  :menber
  end
end
