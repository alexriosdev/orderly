Rails.application.routes.draw do

  # TESTING
  # resources :appointments do
  #   resources :comments
  # end
  # devise_for :users
  # get 'active-sessions', to: "appointments#active_sessions"
  # root to: 'appointments#index'
  # resources :users, only: [:index]
  # resources :clients  
  
  # working
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'appointments#index'
  resources :clients
  resources :appointments

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "users#index"
  
end
