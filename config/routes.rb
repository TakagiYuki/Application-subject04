Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end

  root 'home#top'
  get 'home/about', to: 'home#about'
end