Rails.application.routes.draw do
  devise_for :users

  root 'pages#index'
  get 'pages/show'
  resources :customers
  resources :resevations
end
