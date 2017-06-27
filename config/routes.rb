Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'edit', to: 'taks#edit'
  
  get 'new', to: 'taks#new' 
  
  get 'signup', to: 'users#new'
  resources :users
  
  resources :tasks
end