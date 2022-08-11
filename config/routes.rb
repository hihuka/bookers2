Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/top'
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :index]
  patch 'users/:id' => 'users#update', as: 'update_user'
end
