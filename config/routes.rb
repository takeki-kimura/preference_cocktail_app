Rails.application.routes.draw do
  devise_for :users
  root 'cocktails#index'
  get 'cocktails/search'

  resources :cocktails
  resources :users, only: [:show, :edit]
end
