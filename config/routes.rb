Rails.application.routes.draw do
  root "timelines#home"

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  resources :menus do
    resources :comments, only:[:create, :destroy, :edit]
    resources :foods
    # resources :tags, only: [:new, :create]
    resources :menu_tags, only: [:new, :create]
  end

  resources :menus do
    member do
      put "like", to: "menus#upvote"
      put "dislike", to: "menus#downvote"
    end
  end

  resources :foods do
    member do
      put "ask", to: "foods#ask"
    end
  end

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :tags
  resources :relationships, only: [:create, :destroy]
  resources :searchs, only: [:index] do
    collection {post :search, to: "searchs#search"}
  end
end
