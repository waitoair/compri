Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
  resources :books, only: [:show] do
    resources :watch_lists, only: [:create, :destroy], shallow: true
  end
  
  get 'watchlist', to: 'watch_lists#index', as: :watchlist
  resources :deals, only: [:index]
  
end
