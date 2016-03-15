Rails.application.routes.draw do
  root "timelines#home"
  resources :menus do
  	resources :comments, only:[:create]
  end
  devise_for :users
  resources :users
end
