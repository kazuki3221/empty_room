Rails.application.routes.draw do
  resources :customer_scaffolds
  resources :room2s
  devise_for :users

  root 'pages#index'
  get 'pages/show'
  resources :customers
  resources :resevations
end
