Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'
  resources :books
  root to: 'books#index'
  resources :books
end