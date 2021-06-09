Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:show]
  resources :deals, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
