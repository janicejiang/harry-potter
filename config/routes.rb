Rails.application.routes.draw do
  root 'books#index'

  resources :carts
  resources :cart_items

  resources :books do
    member do
      post :add_to_cart
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
