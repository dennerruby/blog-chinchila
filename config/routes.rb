Rails.application.routes.draw do
  resources :new_products
  root to:'new_products#index'
  devise_for :admins
end
