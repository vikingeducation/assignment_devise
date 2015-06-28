Rails.application.routes.draw do
  resources :users
  root to: 'users#index'
  devise_for :users
end
