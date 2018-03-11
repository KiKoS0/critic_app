Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get    '/search',   to: 'profs#show'
  resources :profs, only: [:show]
  resources :reviews, only: [:create, :destroy]
  resources :reports, only: [:create]
end
