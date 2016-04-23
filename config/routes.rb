Rails.application.routes.draw do


  devise_for :users, :controllers => { registrations: 'registrations' }

  root "statics#index"

  resources :posts
  resources :users
  resources :trains
end
