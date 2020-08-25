Rails.application.routes.draw do
  resources :resevations
  resources :sales
  resources :rooms
  resources :customers
  devise_for :users

  root 'resevations#index'
  get 'pages/show'
end
