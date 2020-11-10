Rails.application.routes.draw do
  resources :admins
  resources :clients
  resources :appointments
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
