Rails.application.routes.draw do
  root "timelines#home"
  resources :menus
  devise_for :users
end
