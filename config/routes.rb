Rails.application.routes.draw do
  get 'reports/index'
  get 'reports/email'

  resources :events
  resources :users, path: "employees"
  root 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
end
