Rails.application.routes.draw do
  resources :post_recipes
  resources :ingredients
  resources :foods
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
 
