Rails.application.routes.draw do
  resources :articles
  get 'about', to: 'pages#about'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]

  root 'pages#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
