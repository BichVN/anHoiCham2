Rails.application.routes.draw do
  root "menus#show"
  resources :menus
  devise_for :users
  resources :users
end
