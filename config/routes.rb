Rails.application.routes.draw do
  devise_for :users
  root 'cocktails#index'

  resources :cocktails do
    resources :comments, only: :create
  end
  resources :users, only: [:show, :edit]
end
