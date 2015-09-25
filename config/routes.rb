Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  resources :likes 

  get '/matches', to: 'likes#matches', as: :matches
  get '/profile', to: 'users#profile', as: :profile

  devise_for :users
  
end
