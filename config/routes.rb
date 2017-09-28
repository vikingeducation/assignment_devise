Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
    get 'login', to: 'devise/sessions#new'
    get 'sign_out', to: 'devise/sessions#destroy'
    get 'logout', to: 'devise/sessions#destroy'
  end

  resources :users

  root to: "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
