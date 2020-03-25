Rails.application.routes.draw do
  get 'admin' => 'admin#index'
    controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users
  resources :products do
    get :who_bought, to:  :menber
  end
  root 'stores#index'
  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    get 'stores/index', to: 'stores#index'
    root 'stores#index', as: 'store_index', via: :all
  end
end
