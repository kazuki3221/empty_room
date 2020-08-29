Rails.application.routes.draw do
  resources :resevations
  resources :sales
  resources :rooms
  resources :customers
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  root'resevations#index'
  post '/pages/guest_sign_in', to: 'pages#new_guest'
  get 'pages/show'

end
