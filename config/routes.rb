Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :users
  resources :cart_items
  resources :carts
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
