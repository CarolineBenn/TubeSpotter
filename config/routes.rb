Rails.application.routes.draw do


  devise_for :users
  root "statics#index"


  resources :posts
  resources :users
  resources :trains
end
