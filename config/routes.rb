Rails.application.routes.draw do
  root to: 'games#index'
  
  resources :games, only: [:new, :create, :show, :destroy]
  
end
