Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  
  resources :users
  resources :likes 

  get '/matches', to: 'likes#matches', as: :matches
  get '/profile', to: 'users#profile', as: :profile

  
end
