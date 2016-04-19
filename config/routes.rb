Rails.application.routes.draw do
  root "timelines#home"
  devise_for :users
  resources :menus do
    resources :comments, only:[:create]
  end
  resources :users do
    resources :followings, only: :index
    resources :followers, only: :index 
  end
  resources :tags 
  resources :relationships,       only: [:create, :destroy]
end
 
