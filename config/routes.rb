Rails.application.routes.draw do
  root 'users#index'

  # why singular ???
  devise_for :user

  resources :users
end
