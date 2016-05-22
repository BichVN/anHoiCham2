Rails.application.routes.draw do
  root "timelines#home"

  devise_for :users
  

  resources :menus do
    resources :comments, only:[:create]
    resources :foods
  end

  resources :menus do
  member do
    put "like", to: "menus#upvote"
    put "dislike", to: "menus#downvote"
  end
end
  resources :users do
    resources :followings, only: :index
    resources :followers, only: :index 
  end
  resources :tags 
  resources :relationships,       only: [:create, :destroy]
  resources :searchs, only: [:index] do
    collection {post :search, to: "searchs#search"}
  end
end
