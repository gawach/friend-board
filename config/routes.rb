Rails.application.routes.draw do
  
  root to: 'games#index'
  
  resources :games, only: [:new, :create, :show, :destroy] do
    resources :boards, only: [:index, :show, :new, :create, :destroy]
  end
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
  
end