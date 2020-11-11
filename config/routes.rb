Rails.application.routes.draw do
  devise_for :users
  # resources :admins
  resources :users
  resources :clients
  resources :appointments
  # resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "users#index"
  
end
