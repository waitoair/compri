Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'
watchlistcontroller
  resources :books, only: [:show] do
    resources :watch_lists, only: [:create, :destroy], shallow: true
  end
    get 'watchlist', to: 'watch_lists#index', as: :watchlist
  
  

  resources :books, only: [:show]
  resources :deals, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
master
end
