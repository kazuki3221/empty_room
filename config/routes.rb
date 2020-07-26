Rails.application.routes.draw do
  resources :rooms
  resources :customers
  devise_for :users

  root 'pages#index'
  get 'pages/show'
end
