Rails.application.routes.draw do
  root "timelines#home"
  resources :menus, only: [:create, :destroy]  do
  	resources :comments, only:[:create]
  end
  devise_for :users
  resources :users
end
