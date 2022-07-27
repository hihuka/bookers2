Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/top'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit, :index]
end
