Rails.application.routes.draw do
  root to: 'users#index'
  resources :users
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
end
