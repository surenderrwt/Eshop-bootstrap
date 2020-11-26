Rails.application.routes.draw do
  resources :orders
  resources :cart_items
  resources :carts
  devise_for :users
  resources :categories
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "home#index"
  resources :products
  get "/by_category" => 'products#by_category', as: 'by_category'  

end
