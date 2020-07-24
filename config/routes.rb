Rails.application.routes.draw do
  resources :scaffold_resevations
  resources :scaffold_sales
  resources :customer_scaffolds
  resources :room2s
  devise_for :users

  root 'pages#index'
  get 'pages/show'
  resources :customers
  resources :resevations
end
