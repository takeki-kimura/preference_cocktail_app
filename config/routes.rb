Rails.application.routes.draw do
  devise_for :users
  root 'cocktails#index'

  resources :cocktails do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit]
end
