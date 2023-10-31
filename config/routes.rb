Rails.application.routes.draw do
  get 'clients/index'
  get 'merchants/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :merchants
  post 'merchant_login', to: "merchants#merchant_login"
  resources :clients
  resources :business_units

end
