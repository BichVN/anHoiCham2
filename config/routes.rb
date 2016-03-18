Rails.application.routes.draw do
  root "timelines#home"
  resources :menus do
  	resources :comments, only:[:create]
  end
  devise_for :users
  resources :users do
    resources :followings, only: :index
    resources :followers, only: :index
  end
  resources :relationships,       only: [:create, :destroy]
end
