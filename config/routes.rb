Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :groups, only: [:show, :edit, :update]
  resources :questions, only: [:create, :show]
  resources :answers, only: [:new, :create, :edit, :update]
  root "top#index"
end
