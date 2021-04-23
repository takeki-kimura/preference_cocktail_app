Rails.application.routes.draw do
  devise_for :users
  root 'preferences#index'
  get 'preferences/search'

  resources :users, only: :show
end
