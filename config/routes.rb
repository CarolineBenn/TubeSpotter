Rails.application.routes.draw do


  devise_for :users, :controllers => { registrations: 'registrations' }

  root "statics#index"

  resources :posts
  resources :users
  resources :trains

  get 'profile/edit', to: 'users#edit', as: 'edit_profile'

  
end
