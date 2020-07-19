Rails.application.routes.draw do
  
  get 'parties/create'
  get 'parties/destroy'
  root to: 'games#index'
  
  resources :games, only: [:new, :create, :show, :destroy] do
    resources :boards, only: [:index, :show, :new, :create, :destroy]
  end
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
  resources :parties, only: [:create, :destroy]
  
end