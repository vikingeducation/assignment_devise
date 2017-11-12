Rails.application.routes.draw do
  root "users#index"
  # resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # This is a method which Devise uses to generate
  # all its custom routes
  devise_for :users
end
