Rails.application.routes.draw do
  resources :books
  devise_for :users
  get 'homes/top'

  root to: "homes#top"
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
