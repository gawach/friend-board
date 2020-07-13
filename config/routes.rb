Rails.application.routes.draw do
  get 'users/show'
  get 'user/s'
  get 'boards/index'
  get 'boards/show'
  get 'boards/new'
  get 'boards/edit'
  root to: 'games#index'
  
  resources :games, only: [:new, :create, :show, :destroy]
  
end
