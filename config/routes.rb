Rails.application.routes.draw do
  root to: 'users#show'
  resources :users do
    resources :events
  end
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
end
