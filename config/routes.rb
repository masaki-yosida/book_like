Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#index'
  resources :books

  resources :books do
    collection do
      get 'contact'
    end
  end
end